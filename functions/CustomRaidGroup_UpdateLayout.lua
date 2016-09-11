Vanilla_CompactRaidGroup_UpdateLayout = CompactRaidGroup_UpdateLayout;

--Removes the Header text from the group (Eg: Party, Group1, Group2, ...)
function CustomRaidGroup_UpdateLayout(frame)
	Vanilla_CompactRaidGroup_UpdateLayout (frame);
	frame.title:SetFormattedText("");
end

CompactRaidGroup_UpdateLayout = CustomRaidGroup_UpdateLayout;