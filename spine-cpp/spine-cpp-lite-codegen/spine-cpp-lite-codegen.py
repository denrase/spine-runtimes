import re

# TODO Handle correct directory relative path or provide it as a parameter
with open('./spine-cpp-lite/spine-cpp-light.h', 'r') as file:
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
            # Assuming type and name are separated by space and taking the last space as the separator
            param_parts = param.rsplit(' ', 1)
            param_type, param_name = param_parts
            spine_param = SpineParam(parameter_type = param_type.strip(), name = param_name.strip())
            # print(spine_param)
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

print(objects)
