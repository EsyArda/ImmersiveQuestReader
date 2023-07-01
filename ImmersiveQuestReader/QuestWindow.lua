-- Quest Window

import "Turbine.UI.Lotro";

QuestWindow = class(Turbine.UI.Lotro.Window);

function QuestWindow:Constructor()
    Turbine.UI.Lotro.Window.Constructor(self);

    local windowWidth = 500;
    local windowHeight = 300;

    self:SetSize(windowWidth, windowHeight);
    
    local screenWidth, screenHeight = Turbine.UI.Display.GetSize();
    local x = (screenWidth - windowWidth) / 2;
    local y = (screenHeight - windowHeight) / 2;
    self:SetPosition(x, y);
    self:SetText("Quest name");
    self:SetVisible(false); -- Hidden by default



    -- Create a label for the text of the quest
    self.questTextLabel = Turbine.UI.Label();
    self.questTextLabel:SetParent(self);
    self.questTextLabel:SetSize(windowWidth - 40, windowHeight - 80);
    self.questTextLabel:SetPosition(20, 40);
    self.questTextLabel:SetFont(Turbine.UI.Lotro.Font.BookAntiqua24);
    self.questTextLabel:SetText("Quest text");
    self.questTextLabel:SetBackColor(Turbine.UI.Color(0,0.17,0.11));
    self.questTextLabel:SetVisible(true);
end

function QuestWindow:SetQuestName(questName)
    self:SetText(questName);
end

function QuestWindow:SetQuestText(questText)
    self.questTextLabel:SetText(questText);
end

function QuestWindow:NewQuest(quest)
    self:SetVisible(true);
    self:SetQuestName(quest.name);
    local questText = quest.bestower[1].text;
    -- Split the text in a table of lines
    local lines = {};
    for line in string.gmatch(questText, "[^\r\n]+") do
        table.insert(lines, line);
    end
    self:SetQuestText(quest.bestower[1].text);
end
