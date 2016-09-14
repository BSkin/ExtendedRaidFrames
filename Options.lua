--[[
local panel = CreateFrame( "Frame", "PanelName", UIParent );
panel.name = "ExtendedRaidFrames";

InterfaceOptions_AddCategory(panel);

local checkbutton = CreateFrame("CheckButton", "Checkbutton Test", panel, "UICheckButtonTemplate")
checkbutton:ClearAllPoints()
checkbutton:SetPoint("TOPLEFT", 0, 0)
checkbutton:SetText("Test checkbox text");
checkbutton.type = "CheckButton";

local checkbutton2 = CreateFrame("CheckButton", "Checkbutton Test 2", panel, "UICheckButtonTemplate")
checkbutton2:ClearAllPoints()
checkbutton2:SetPoint("TOPLEFT", 0, -20)
checkbutton2:SetText("Test checkbox text 2");
checkbutton2.type = "CheckButton";
--]]