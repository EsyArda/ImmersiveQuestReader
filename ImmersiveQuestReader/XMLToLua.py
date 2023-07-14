import xml.etree.ElementTree as ET
import time

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


# Function to divide the XML into multiple XML trees based on the level of the quest
def divide_xml_by_level(root):
    quests_by_level = {}
    for quest in root.findall('quest'):
        level = quest.get('level')
        level_range = int(level) // 10
        if level_range in quests_by_level:
            quests_by_level[level_range].append(quest)
        else:
            quests_by_level[level_range] = [quest]

    divided_xml_trees = {}
    for level_range, quests in quests_by_level.items():
        divided_xml_trees[level_range] = ET.ElementTree(ET.Element(root.tag))
        for quest in quests:
            divided_xml_trees[level_range].getroot().append(quest)
    
    return divided_xml_trees

        



def main():

    start = time.time()

    # Load key-value from the labels XML file and convert it to a dictionary
    key_value_dict = extract_key_value_pairs('ImmersiveQuestReader/lotro-data/labels/en/quests.xml')
    print(f"Extracted key-value pairs from the labels XML file in {time.time() - start} seconds.")

    # Replace key strings with their values in the quests XML file
    xml_tree = replace_key('ImmersiveQuestReader/lotro-data/quests/quests.xml', key_value_dict)
    print(f"Replaced keys with their values in the english quests XML file in {time.time() - start} seconds.")


    # ----- Write and read intermediate XML files -----
    # Write the labeled quests XML file
    # xml_tree.write('ImmersiveQuestReader/quests-en.xml', encoding="utf-8", xml_declaration=True)
    # print("Wrote the labeled english quests XML file.")
    # Repeat for every language

    # # Load the labeled XML file
    # tree = ET.parse('ImmersiveQuestReader/quests-en.xml')
    # root = tree.getroot()
    # -----


    # Divide the XML into multiple XML trees based on the level of the quest
    divided_xml_trees = divide_xml_by_level(xml_tree.getroot())

    # Convert XML trees to Lua tables
    for level_range, xml_tree in divided_xml_trees.items():
        lua_table = xml_to_dict(xml_tree.getroot())
        print(f"Converted XML to Lua table for level range {level_range} in {time.time() - start} seconds.")

        # Format the Lua table as a string
        lua_table_quests_str = f"QUESTS{str(level_range).replace('-', 'm')} = " + format_lua_table(lua_table)
        print(f"Formatted the Lua table as a string for level range {level_range} in {time.time() - start} seconds.")

        # Write Lua table to file
        with open(f'ImmersiveQuestReader/QuestDatabase{level_range}.lua', 'w', encoding="utf-8") as file:
            file.write(lua_table_quests_str)
        print(f"Wrote the Lua table to the 'QuestDatabase{level_range}.lua' file in {time.time() - start} seconds.")
        
    # lua_table = xml_to_dict(xml_tree.getroot())
    # print("Converted XML to Lua table.")
    # 
    # # Format the Lua table as a string
    # lua_table_quests_str = "QUESTS = " + format_lua_table(lua_table)
    # print("Formatted the Lua table as a string.")
    # 
    # # Output the Lua table
    # # print(lua_table_quests_str)
    # 
    # # Write Lua table to file
    # with open('ImmersiveQuestReader/QuestDatabase.lua', 'w', encoding="utf-8") as file:
    #     file.write(lua_table_quests_str)
    # print("Wrote the Lua table to the 'QuestDatabase.lua' file.")

if __name__ == "__main__":
    main()