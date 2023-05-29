""" 
# Function to convert XML element to Lua table
def xml_to_lua(element):
    lua_table = "{\n"
    print(type(element.tag))
    for child in element:
        # lua_table += "\t" + child.tag + " = {"
        lua_table += "\t{"
        for attribute in child.attrib:
            lua_table += attribute + " = '" + child.attrib[attribute] + "', "
        pass
        lua_table += "},\n"
    lua_table += "}\n"
    return lua_table


# Load the XML file
tree = ET.parse('ImmersiveQuestReader\Quests.xml')
root = tree.getroot()

# Convert XML to Lua table
lua_table  = "QUESTS = "
lua_table += xml_to_lua(root)
print(lua_table)
# Write Lua table to file
with open('ImmersiveQuestReader\Test.lua', 'w') as file:
    file.write(lua_table)

 """




import xml.etree.ElementTree as ET

# Function to convert XML element to Lua table
def xml_to_dict(element):
    dictionary = {}
    for child in element:
        if child.tag in dictionary:
            if type(dictionary[child.tag]) is list:
                dictionary[child.tag].append(xml_to_dict(child))
            else:
                dictionary[child.tag] = [dictionary[child.tag], xml_to_dict(child)]
        else:
            dictionary[child.tag] = xml_to_dict(child)

    if len(element.attrib) > 0:
        # dictionary["attributes"] = element.attrib
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