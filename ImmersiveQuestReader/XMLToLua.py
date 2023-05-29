import xml.etree.ElementTree as ET

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


# Load the XML file
tree = ET.parse('ImmersiveQuestReader\quests-en.xml')
root = tree.getroot()

# Convert XML to Lua table
lua_table = xml_to_dict(root)

# Format the Lua table as a string
lua_table_quests_str = "QUESTS = " + format_lua_table(lua_table)

# Output the Lua table
# print(lua_table_quests_str)

# Write Lua table to file
with open('ImmersiveQuestReader\Quests.lua', 'w', encoding="utf-8") as file:
    file.write(lua_table_quests_str)