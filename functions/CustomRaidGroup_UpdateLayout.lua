--Removes the Header text from the group (Eg: Party, Group1, Group2, ...)
function CustomRaidGroup_UpdateLayout(frame)
	frame.title:SetFormattedText("");
end

hooksecurefunc("CompactRaidGroup_UpdateLayout", CustomRaidGroup_UpdateLayout)