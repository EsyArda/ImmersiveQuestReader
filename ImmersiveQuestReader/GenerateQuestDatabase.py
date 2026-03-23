import xml.etree.ElementTree as ET
import time
# import string # To iterate from A to Z
import logging
import argparse
import luadata

# Function to extract key-value pairs from the labels xml
def extract_key_value_pairs(xml_file):
    tree = ET.parse(xml_file)
    root = tree.getroot()
    xml_dict = {}
    for element in root.iter('label'):
        key = element.get('key')
        value = element.get('value')
        xml_dict[key] = value
    return xml_dict

# Function to replace key strings with their values in the xml
def xml_replace_key(xml_file, key_value_dict):
    # Load the quests XML file
    tree = ET.parse(xml_file)
    root = tree.getroot()

    for element in root.iter():
        for key, value in element.attrib.items():
            if value in key_value_dict:
                element.attrib[key] = key_value_dict[value]
    return tree


# Function to convert XML element to a dictionary
def xml_to_dictionary(element):
    dictionary = {}
    for child in element:
        if child.tag in dictionary:
            # If the item is already in the dictionary, it must be a list
            if type(dictionary[child.tag]) is list:
                # Append the new item to the list
                dictionary[child.tag].append(xml_to_dictionary(child))
            else:
                # Create the list if it doesn't exist
                dictionary[child.tag] = [dictionary[child.tag], xml_to_dictionary(child)]
        else:
            dictionary[child.tag] = xml_to_dictionary(child)

    if len(element.attrib) > 0:
        # Add attributes to the dictionary
        for attribute in element.attrib:
            dictionary[attribute] = element.attrib[attribute]

    if element.text and element.text.strip() != "":
        dictionary["text"] = element.text.strip()

    return dictionary

# Function to format Lua table as string
def format_lua_table(table: dict, indent=0, beautiful=False):
    formatted = "{\n" if beautiful else "{"
    for key, value in table.items():
        # if beautiful:
        #     formatted += "\t" * (indent + 1)
        if isinstance(value, dict):
            formatted += f"{key} = {format_lua_table(value, indent + 1, beautiful)}"
        elif isinstance(value, list):
            formatted += f"{key} = {format_lua_table_list(value, indent + 1, beautiful)}"
        else:
            formatted += f"{key} = {repr(value)}"
        formatted += ",\n" if beautiful else ","
    # formatted += "\t" * indent + "}" # for better readability
    formatted += "}"

    return formatted

# Function to format Lua table lists as string
def format_lua_table_list(list, indent=0, beautiful=False):
    formatted = "{\n" if beautiful else "{"
    for item in list:
        # formatted += "\t" * (indent + 1) # Indentation for readability
        if isinstance(item, dict):
            formatted += format_lua_table(item, indent + 1)
        else:
            formatted += repr(item)
        formatted += ",\n" if beautiful else ","
    # formatted += "\t" * indent + "}" # Indentation for readability
    formatted += "}"

    return formatted


# Create a dictionary of XML trees
def dictionary_of_xml_trees(root, quests_by_key):
    divided_xml_trees = {}
    for letter, quests in quests_by_key.items():
        divided_xml_trees[letter] = ET.ElementTree(ET.Element(root.tag))
        for quest in quests:
            divided_xml_trees[letter].getroot().append(quest)
    
    return divided_xml_trees


def filter_quests_fields(quests_dictionary):
    '''Remove any useless information to reduce the Lua table size to avoid a table overflow'''
    # Fields to keep
    # - quest.name: quest name
    # - quest.bestower.npcName: quest giver name
    # - quest.bestower.text and quest.bestower[1].text: new quest text
    # - quest.objectives.objective.dialog.text quest.objectives.objective[N].dialog.text quest.objectives.objective[N].dialog[N[N].dialog].text: completed quest text
    filtered_quests = {'quest': []}
    for quest in quests_dictionary['quest']:
        filtered_quest = {
            'name': quest['name'],
            'bestower': {
                'npcName': "",
                'text': ""
            },
            'objectives': {
                'objective': {
                    'dialog': {
                        'text': ""
                    }
                }
            }
        }
        if 'bestower' in quest:
            # Bestower name
            if isinstance(quest['bestower'], list) and 'npcName' in quest['bestower'][0]:
                filtered_quest['bestower']['npcName'] = quest['bestower'][0]['npcName']
            elif 'npcName' in quest['bestower']:
                filtered_quest['bestower']['npcName'] = quest['bestower']['npcName']
            else:
                logging.warning(f"⚠ Quest {quest['name']} has no bestower name.")

            # Bestower text
            if isinstance(quest['bestower'], list) and 'text' in quest['bestower'][0]:
                filtered_quest['bestower']['text'] = quest['bestower'][0]['text']
            elif 'text' in quest['bestower']:
                filtered_quest['bestower']['text'] = quest['bestower']['text']
            else:
                logging.warning(f"⚠ Quest {quest['name']} has no bestower text.")
        else:
            logging.warning(f"⚠ Quest {quest['name']} has no bestower.")

        # Quest objective: completed quest text
        quest_objective = quest['objectives']['objective']
        if isinstance(quest_objective, dict) and 'text' in quest_objective['dialog']:
            filtered_quest['objectives']['objective']['dialog']['text'] = quest_objective['dialog']['text']
        elif isinstance(quest_objective, dict) and isinstance(quest_objective['dialog'], list) and 'text' in quest_objective['dialog'][-1]:
            filtered_quest['objectives']['objective']['dialog']['text'] = quest_objective['dialog'][-1]['text']
        elif isinstance(quest_objective, list) and isinstance(quest_objective[-1]['dialog'], dict) and 'text' in quest_objective[-1]['dialog']:
            filtered_quest['objectives']['objective']['dialog']['text'] = quest_objective[-1]['dialog']['text']
        elif isinstance(quest_objective, list) and isinstance(quest_objective[-1]['dialog'], list) and 'text' in quest_objective[-1]['dialog'][-1]:
            filtered_quest['objectives']['objective']['dialog']['text'] = quest_objective[-1]['dialog'][-1]['text']
        else:
            filtered_quest['objectives']['objective']['dialog']['text'] = "Quest completed."
            logging.warning(f"⚠ Quest {quest['name']} has no objective text.")
        
        filtered_quests['quest'].append(filtered_quest)        
            
    return filtered_quests


def quests_by_initial(quests: dict) -> dict:
    """
    Return a dictionary of the form: { "A": [{quest1}, {quest2}, …],
                                       "B": [{quest3}, {quest4}, …],
                                       …
                                       "OTHER": [{quest5}, {quest6}, …]}
    """
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    quests_by_name = {}
    for letter in letters:
        quests_by_name[letter] = []
    quests_by_name["OTHER"] = []
    for quest in quests["quest"]:
        first_letter = quest["rawName"][0].upper()
        if first_letter in letters:
            quests_by_name[first_letter].append(quest)
        else:
            quests_by_name["OTHER"].append(quest)
    return quests_by_name

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="generate the quest databases Lua tables")
    parser.add_argument("-d", "--debug", action="store_true", default=False, help="enable debug logging (default to info)")
    args = parser.parse_args()
    
    logging.basicConfig(level=logging.DEBUG if args.debug else logging.INFO)
    
    start = time.time()
    # Load key-value from the labels XML file and convert it to a dictionary
    quests_labels_xml = extract_key_value_pairs('lotro-data/lore/labels/en/quests.xml')
    logging.info(f"✅ Extracted quests text labels {(time.time() - start):.2f} seconds.")

    start = time.time()
    # Replace key strings with their values in the quests XML file
    # quests_labeled_xml = replace_key('lotro-data/lore/quests.xml', quests_labels_xml)
    quests_labeled_xml = xml_replace_key('./test_quests.xml', quests_labels_xml)
    logging.info(f"✅ Replaced keys with their values in the english quests XML file in {(time.time() - start):.2f} seconds.")
    
    start = time.time()
    quests_labeled = xml_to_dictionary(quests_labeled_xml.getroot())
    quests_by_initial = quests_by_initial(quests_labeled)
    logging.info(f"✅ Grouped quests by first letter of name in {(time.time() - start):.2f} seconds.")
    
    start = time.time()
    for letter, quest_list in quests_by_initial.items():
        with open(f'QuestDatabase-{letter}.lua', 'w', encoding="utf-8") as file:
            file.write(f"QUESTS_{letter} = " + luadata.serialize(quest_list, indent=" "))
    logging.info(f"✅ Wrote the quest databases Lua tables in {(time.time() - start):.2f} seconds.")
