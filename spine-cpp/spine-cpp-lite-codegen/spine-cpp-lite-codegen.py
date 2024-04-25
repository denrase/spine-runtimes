import re

# TODO Handle correct directory relative path or provide it as a parameter
with open('./spine-cpp-lite/spine-cpp-light.h', 'r') as file:
    file_contents = file.read()

# file_lines = file_contents.splitlines()

# for file_line in file_lines:
#     print("FOO {}".format(file_line))

types_start = file_contents.find('// parse_start: spine_opaque_types') + len('// parse_start: spine_opaque_types')
types_end = file_contents.find('// parse_end: spine_opaque_types')
types_section = file_contents[types_start:types_end]
types = re.findall(r'SPINE_OPAQUE_TYPE\(([^)]+)\)', types_section)

for type in types:
    print(type)