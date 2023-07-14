import xml.etree.ElementTree as ET

# Function to extract key-value pairs from the labels xml
def extract_key_value_pairs(xml_file):
    tree = ET.parse(xml_file)
    root = tree.getroot()
    key_value_dict = {}
    for element in root.iter('label'):
        key = element.get('key')
        value = element.get('value')
        key_value_dict[key] = value
    return key_value_dict

# Function to replace key strings with their values in the xml
def replace_key(xml_file, key_value_dict):
    # Load the quests XML file
    tree = ET.parse(xml_file)
    root = tree.getroot()

    for element in root.iter():
        for key, value in element.attrib.items():
            if value in key_value_dict:
                element.attrib[key] = key_value_dict[value]
    return tree


# Function to convert XML element to Lua table
def xml_to_dict(element):
    dictionary = {}
    for child in element:
        if child.tag in dictionary:
            # If the item is already in the dictionary, it must be a list
            if type(dictionary[child.tag]) is list:
                # Append the new item to the list
                dictionary[child.tag].append(xml_to_dict(child))
            else:
                # Create the list if it doesn't exist
                dictionary[child.tag] = [dictionary[child.tag], xml_to_dict(child)]
        else:
            dictionary[child.tag] = xml_to_dict(child)

    if len(element.attrib) > 0:
        # Add attributes to the dictionary
        for attribute in element.attrib:
            dictionary[attribute] = element.attrib[attribute]

    if element.text and element.text.strip() != "":
        dictionary["text"] = element.text.strip()

    return dictionary

# Function to format Lua table as string
def format_lua_table(table, indent=0):
    formatted = "{\n"
    for key, value in table.items():
        formatted += "\t" * (indent + 1)
        if isinstance(value, dict):
            formatted += f"{key} = {format_lua_table(value, indent + 1)}"
        elif isinstance(value, list):
            formatted += f"{key} = {format_lua_table_list(value, indent + 1)}"
        else:
            formatted += f"{key} = {repr(value)}"
        formatted += ",\n"
    formatted += "\t" * indent + "}"

    return formatted

# Function to format Lua table lists as string
def format_lua_table_list(list, indent):
    formatted = "{\n"
    for item in list:
        formatted += "\t" * (indent + 1)
        if isinstance(item, dict):
            formatted += format_lua_table(item, indent + 1)
        else:
            formatted += repr(item)
        formatted += ",\n"
    formatted += "\t" * indent + "}"

    return formatted




# Load key-value from the labels XML file and convert it to a dictionary
key_value_dict = extract_key_value_pairs('ImmersiveQuestReader/test-data/labels/en/quests.xml')

# Replace key strings with their values in the quests XML file
xml_tree = replace_key('ImmersiveQuestReader/test-data/quests/quests.xml', key_value_dict)

# Write the labeled quests XML file
xml_tree.write('ImmersiveQuestReader/test-data/quests-en.xml', encoding="utf-8", xml_declaration=True)
# Repeat for every language

# # Load the labeled XML file
# tree = ET.parse('ImmersiveQuestReader/quests-en.xml')
# root = tree.getroot()

# Convert XML to Lua table
lua_table = xml_to_dict(xml_tree.getroot())

# Format the Lua table as a string
lua_table_quests_str = "QUESTS = " + format_lua_table(lua_table)

# Output the Lua table
# print(lua_table_quests_str)

# Write Lua table to file
with open('ImmersiveQuestReader/TestQuests.lua', 'w', encoding="utf-8") as file:
    file.write(lua_table_quests_str)