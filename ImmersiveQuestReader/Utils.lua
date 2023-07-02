-- Function from the ItemTreasury plugin (thank you Galhulad!)
function NewItemInfo(itemID)
    if itemID == nil then return end;

    local cItemInspect = Turbine.UI.Lotro.Quickslot();
    cItemInspect:SetSize(36,36);
    cItemInspect:SetVisible(true);

    local cItemInfo = Turbine.UI.Lotro.ItemInfoControl();
    cItemInfo:SetSize(36,36);
    cItemInfo:SetAllowDrop(false);
    cItemInfo:SetVisible(true);
    cItemInfo["ItemID"] = 0;

    cItemInfo.SetItem = function (sender, newItemID)
        if newItemID == nil then return end;
        local itemHex = TO_HEX(newItemID);

        local function SetInspectIcon() 	-- PCALL THIS incase item does not exist
            cItemInspect:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Item, "0x0,0x" .. itemHex));
        end

        if pcall(SetInspectIcon) then
            cItemInspect:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Item, "0x0,0x" .. itemHex)); -- works u23
            local itemInfo = cItemInspect:GetShortcut():GetItem():GetItemInfo();
            cItemInfo:SetItemInfo(itemInfo);
            cItemInfo:SetQuantity(1);
            cItemInfo.ItemID = newItemID;
        end

    end

    cItemInfo:SetItem(itemID);

    return cItemInfo;
end

-- Function from the ItemTreasury plugin (thank you Galhulad!)
function TO_HEX(IN)
	local B,K,OUT,I,D=16,"0123456789ABCDEF","",0,0;

		if IN == 0 or IN == "0" then
			return "00";
		end

		while IN>0 do
		I=I+1
		IN,D=math.floor(IN/B),math.mod(IN,B)+1
		OUT=string.sub(K,D,D)..OUT
	end
	if string.len(OUT) == 1 then OUT = "0" .. OUT end;
	return OUT
end