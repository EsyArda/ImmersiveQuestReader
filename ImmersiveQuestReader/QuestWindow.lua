-- Quest Window

import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

QuestWindow = class(Turbine.UI.Lotro.Window);

function QuestWindow:Constructor()
    Turbine.UI.Lotro.Window.Constructor(self);

    local windowWidth = 800;
    local windowHeight = 300;
    local footerHeight = 20;
    local xMargin = 20;
    local yMargin = 20;
    local topMargin = 40;

    self:SetSize(windowWidth, windowHeight);
    
    local screenWidth, screenHeight = Turbine.UI.Display.GetSize();
    local x = (screenWidth - windowWidth) / 2;
    local y = (screenHeight - windowHeight) / 2;
    self:SetPosition(x, y);
    self:SetMouseVisible(true);
    self:SetText("Quest name");
    self:SetVisible(false); -- Hidden by default

    -- Quest information on the left
    local questInfoWidth = 200;
    self.questInfo = Turbine.UI.Control();
    self.questInfo:SetParent(self);
    self.questInfo:SetSize(questInfoWidth, windowHeight - topMargin - 2*yMargin - footerHeight);
    self.questInfo:SetPosition(xMargin, topMargin);
    self.questInfo:SetBackColor(Turbine.UI.Color(0.74,0.29,0.29,0.11));
    self.questInfo:SetVisible(true);


    -- Create a label for the text of the quest
    self.questText = "0 - Quest Name"
    self.titleLabel = Turbine.UI.Label();
    self.titleLabel:SetParent(self);
    self.titleLabel:SetSize(windowWidth - self.questInfo:GetLeft() - self.questInfo:GetWidth() - 2*xMargin, windowHeight - footerHeight - topMargin - 2*yMargin);
    self.titleLabel:SetPosition(self.questInfo:GetLeft() + self.questInfo:GetWidth() + xMargin, topMargin);
    self.titleLabel:SetFont(Turbine.UI.Lotro.Font.BookAntiqua24);
    self.titleLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.titleLabel:SetBackColor(Turbine.UI.Color(0.74,0.11,0.17,0.29));
    self.titleLabel:SetText(self.questText);
    self.titleLabel:SetVisible(true);
    

    -- Player (needed for their name)
    self.player = Turbine.Gameplay.LocalPlayer:GetInstance();
    
    -- Current quest displayed
    self.quest = nil;
    -- Table of lines of the quest text
    self.questPages = {};
    -- Current index in the table of lines
    self.currentPage = 1;
    
    
    -- Can click on the text
    self.titleLabel.MouseUp = function(sender, args)
        if self.currentPage < #self.questPages then
            self.currentPage = self.currentPage + 1;
            self:SetQuestText(self.questPages[self.currentPage]);
            self:UpdateFooterText();
        else
            self.questPages = {};
            self.currentPage = 1;
            self:SetVisible(false);
        end    
    end


    -- Number of pages
    self.pageNumber = Turbine.UI.Label();
    self.pageNumber:SetParent(self);
    self.pageNumber:SetSize(windowWidth - 40, 20);
    self.pageNumber:SetPosition(20, windowHeight - 40);
    self.pageNumber:SetBackColor(Turbine.UI.Color(0.74,0.11,0.29,0.16));
    self.pageNumber:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight);
    self.pageNumber:SetText("Quest Name - 1/1");

end

function QuestWindow:UpdateWindowTitle()
    self:SetText(self.quest.level .. " - " .. self.quest.name);
end

function QuestWindow:SetQuestText(questText)
    self.titleLabel:SetText(questText);
end

function QuestWindow:ShowQuest(quest, state)
    self.quest = quest;
    self:SetVisible(true);
    self:UpdateWindowTitle();
    
    local questText = "";
    if state ~= nil and state == "completed" then
        Turbine.Shell.WriteLine("IQR> Quest completed");
    else
        if quest.bestower.text ~= nil and type(quest.bestower.text) == "string" then
            questText = quest.bestower.text;
        else
            questText = quest.bestower[1].text;
        end

    end        
    questText = self:ComputeQuestText(questText);

    -- Split the text in a table of lines
    for line in string.gmatch(questText, "[^ '\n][^.!?\n]+[.!?]*") do
        -- [^\n]+ Matches everything except new line 
        -- [^ '\n][^.!?\n]+[.!?]* Does not start with a space or a quote then match any character except .!? and new line one or more times then match .!? zero or more times to include them at the end of the line.
        if line ~= "" then
            table.insert(self.questPages, line);
        end
    end

    self:SetQuestText(self.questPages[1]);
    self:UpdateFooterText();
end


function QuestWindow:ComputeQuestText(questText)
    local questTextComputed = string.gsub(questText, "${PLAYER}", self.player:GetName());
    questTextComputed = string.gsub(questTextComputed, "${RACE}", self.player:GetRace()); --outputs a number :c
    return questTextComputed;
end


function QuestWindow:UpdateFooterText()
    self.pageNumber:SetText(self.quest.name .. " - " .. self.currentPage .. "/" .. #self.questPages);
end