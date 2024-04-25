import re
import os

script_directory = os.path.dirname(os.path.abspath(__file__))
input_path = os.path.join(script_directory, '../spine-cpp-lite/spine-cpp-light.h')

# TODO Handle correct directory relative path or provide it as a parameter
with open(input_path, 'r') as file:
    file_contents = file.read()

# file_lines = file_contents.splitlines()

# for file_line in file_lines:
#     print("FOO {}".format(file_line))

def read_spine_types(data):
    types_start = data.find('// parse_start: spine_opaque_types') + len('// parse_start: spine_opaque_types')
    types_end = data.find('// parse_end: spine_opaque_types')
    types_section = data[types_start:types_end]
    return re.findall(r'SPINE_OPAQUE_TYPE\(([^)]+)\)', types_section)

def read_spine_function_declarations(data):
    declarations_start = data.find('// parse_start: spine_function_declarations') + len('// parse_start: spine_function_declarations')
    declarations_end = data.find('// parse_end: spine_function_declarations')
    declarations_section = data[declarations_start:declarations_end]
    lines = declarations_section.split('\n')

    filtered_lines = [
        line.strip() for line in lines
        if not line.strip().startswith('//') and line.strip() != ''
    ]

    function_declaration = [
        line.replace('SPINE_CPP_LITE_EXPORT', '').strip()
        for line in filtered_lines
    ]

    return function_declaration

class SpineObject:
    def __init__(self, name, functions):
        self.name = name
        self.functions = functions

    def __str__(self):
        return f"SpineObject: name: {self.name}, functions: {self.functions}"
    
class SpineFunction:
    def __init__(self, return_type, name, parameters):
        self.return_type = return_type
        self.name = name
        self.parameters = parameters

    def __str__(self):
        return f"SpineFunction(return_type: {self.return_type}, name: {self.name}, parameters: {self.parameters})"
    
    def __repr__(self):
        return self.__str__()

class SpineParam:
    def __init__(self, parameter_type, name):
        self.parameter_type = parameter_type
        self.name = name

    def __str__(self):
        return f"SpineParam(parameter_type: {self.parameter_type}, name: {self.name})"
    
    def __repr__(self):
        return self.__str__()

def parse_function_declaration(declaration):
    # Strip semicolon and extra whitespace
    declaration = declaration.strip(';').strip()

    # Use regex to split the declaration into parts
    # Regex explanation:
  # ^([\w\s\*]+?)\s+ - Capture the return type, possibly including spaces and asterisks (non-greedy)
    # ([\w]+) - Capture the function name (alphanumeric and underscores)
    # \((.*)\) - Capture the argument list in entirety
    match = re.match(r'^(\S.+?\s*\*?\s*)([\w]+)\s*\((.*)\)$', declaration)

    if not match:
        return "Invalid function declaration"
    
    return_type, function_name, params = match.groups()

    params = params.strip()
    parameters = []
    if params:
        # Splitting each argument on comma
        param_list = params.split(',')
        for param in param_list:
            
            param_parts = []
            if '*' in param: # Split at the pointer and add it as a suffix to the type
              param_parts = param.rsplit('*', 1)
              param_parts[0] = param_parts[0] + '*'
            else: # Assuming type and name are separated by space and taking the last space as the separator
              param_parts = param.rsplit(' ', 1)
            param_type, param_name = param_parts
            spine_param = SpineParam(parameter_type = param_type.strip(), name = param_name.strip())
            parameters.append(spine_param)
    
    return SpineFunction(
        return_type = return_type.strip(),
        name = function_name.strip(),
        parameters = parameters
    )

types = read_spine_types(file_contents)
function_declarations = read_spine_function_declarations(file_contents)

sorted_types = sorted(types, key=len, reverse=True) # Sorted by legth descending so we can match longest prefix.
spine_functions = [
    parse_function_declaration(function_declaration)
    for function_declaration in function_declarations
]

objects = []

for type in sorted_types:
    object_functions = []

    hits = set() ## Keep track of hits and remove them for next object

    for function_declaration in function_declarations:
          spine_function = parse_function_declaration(function_declaration)
          if spine_function.name.startswith(type):
              hits.add(function_declaration);
              object_functions.append(spine_function);
    
    object = SpineObject(name = type, functions = object_functions);
    objects.append(object)

    function_declarations = [item for item in function_declarations if item not in hits]

def snake_to_camel(snake_str):
    # Split the string by underscore
    parts = snake_str.split('_')
    # Return the first part lowercased and concatenate capitalized subsequent parts
    return parts[0] + ''.join(word.capitalize() for word in parts[1:])

def snake_to_title(snake_str):
    # Split the string at underscores
    words = snake_str.split('_')
    # Capitalize the first letter of each word
    words = [word.capitalize() for word in words]
    # Join the words into a single string without any separator
    title_str = ''.join(words)
    return title_str

class SwiftTypeWriter:
    def __init__(self, type):
        self.type = type
        self.c_to_swift_type_map = {
          'void *': 'UnsafeMutableRawPointer',          # Generic pointer
          'const utf8 *': 'UnsafePointer<CChar>',      # Pointer to UTF-8 characters; can also be mapped to 'String' if converting
          'uint64_t': 'UInt64',                        # Unsigned 64-bit integer
          'float *': 'UnsafeMutablePointer<Float>',    # Pointer to a float
          'float': 'Float',                            # Floating-point number
          'int32_t': 'Int32',                           # 32-bit integer
          'utf8 *': 'UnsafePointer<CChar>'
      }
    def write(self):
        parameter_type = self.c_to_swift_type_map.get(self.type)
        if parameter_type is None:
          parameter_type = self.type
        return parameter_type
        
class SwiftParamWriter:
    def __init__(self, param):
        self.param = param
        
    def write(self):
        parameter_type = SwiftTypeWriter(type = self.param.parameter_type).write()
        return f"{snake_to_camel(self.param.name)}: {parameter_type}"
    
class SwiftFunctionWriter:
    def __init__(self, spine_object_name, spine_function):
        self.spine_object_name = spine_object_name
        self.spine_function = spine_function

    def write(self):
        inset = "  "

        function_prefix = f"{self.spine_object_name}_"
        function_name = self.spine_function.name.replace(function_prefix, "", 1)

        function_string = inset;
        function_string += f"public func {snake_to_camel(function_name)}"
        function_string += "("

        swift_params = [
            SwiftParamWriter(param = spine_param).write()
            for spine_param in self.spine_function.parameters
        ]
        function_string += ", ".join(swift_params)
        function_string += ")"

        if not self.spine_function.return_type == "void":
            function_string += f" -> {SwiftTypeWriter(type = self.spine_function.return_type).write()}"

        function_string += " {"
        function_string += "\n"

        function_string += inset + inset

        if not self.spine_function.return_type == "void":
            function_string += "return "
        
        function_string += f"{self.spine_function.name}"
        function_string += "("

        swift_param_names = [
            spine_param.name
            for spine_param in self.spine_function.parameters
        ]

        function_string += ", ".join(swift_param_names)
        function_string += ")"

        function_string += "\n"

        function_string += inset + "}"
        function_string += "\n"

        return function_string

class SwiftObjectWriter:
    def __init__(self, spine_object):
        self.spine_object = spine_object

    def write(self):
        object_string = f"public final class {snake_to_title(self.spine_object.name)}"

        object_string += " {"
        object_string += "\n"
        object_string += "\n"

        for spine_function in self.spine_object.functions:
            object_string += SwiftFunctionWriter(spine_object_name = self.spine_object.name, spine_function = spine_function).write()
            object_string += "\n"

        object_string += "}"

        return object_string

print("import Foundation")
print("import SpineWrapper")

for object in objects:
    print(SwiftObjectWriter(spine_object = object).write())
    print("")

# TODO: Hold instanve variable if object name and first arg type match
# TODO: Getter/Setter as var computed property
# TODO: Handle arrays (pointer pointer)
# TODO: Handle char* string return
# TODO: Handle char* arguments as string
