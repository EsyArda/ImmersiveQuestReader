import "Turbine";
import "EsyIQR.ImmersiveQuestReader.Quests"


Turbine.Shell.WriteLine("\nIQR> Starting Immersive Quest Reader...")


-- Returns the quest text for a given quest name
function QuestTextByName(quests, questName)
    for _, quest in pairs(quests) do
        if quest.name == questName then
            Turbine.Shell.WriteLine("IQR> Quest found: '" .. quest.name .. "'")
            return quest -- Retourne la quête si le nom correspond
        end
    end
    return nil -- Retourne nil si la quête n'est pas trouvée
end


function PrintTextFromQuestName(questName)
    local quest = QuestTextByName(QUESTS, questName)

    if quest then 
        local text = quest.bestowers[1].text
        Turbine.Shell.WriteLine("IQR> Quest text: " .. text);
    else
        Turbine.Shell.WriteLine("IQR> La quête '" .. questName .. "' n'a pas été trouvée.")
    end
    
end
    
-- Callback when a message is received
Turbine.Chat.Received = function (sender, args)
    -- If message starts with "New Quest: " then get the quest name
    if string.find(args.Message, "New Quest: ") then
        local questName = string.sub(args.Message, 12);
        Turbine.Shell.WriteLine("IQR> New quest: '" .. questName .. "'")
        PrintTextFromQuestName(questName)
    end
end
