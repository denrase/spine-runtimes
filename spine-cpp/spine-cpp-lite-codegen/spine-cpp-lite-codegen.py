import re

# TODO Handle correct directory relative path or provide it as a parameter
with open('./spine-cpp-lite/spine-cpp-light.h', 'r') as file:
    file_contents = file.read()

# file_lines = file_contents.splitlines()

# for file_line in file_lines:
#     print("FOO {}".format(file_line))

def extract_spine_types(data):
    types_start = data.find('// parse_start: spine_opaque_types') + len('// parse_start: spine_opaque_types')
    types_end = data.find('// parse_end: spine_opaque_types')
    types_section = data[types_start:types_end]
    return re.findall(r'SPINE_OPAQUE_TYPE\(([^)]+)\)', types_section)

types = extract_spine_types(file_contents)

for type in types:
    print(type)