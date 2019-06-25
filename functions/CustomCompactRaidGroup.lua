--Removes the Header text from the group (Eg: Party, Group1, Group2, ...)
function CustomCompactRaidGroup_UpdateLayout(frame)
	--frame.title:SetFormattedText("");
end

--[[
function getUnitRaidGroup(unit)
	local raidIndex = UnitInRaid(unit);
	return select(3, GetRaidRosterInfo(raidIndex));
end

function getRaidGroupPos(frame, groupIndex)
	local groupCol = math.fmod(groupIndex-1, 2);
	local groupRow = math.floor((groupIndex-1) / 2); 
	
	local x = groupCol * frame:GetWidth()
	local y = groupRow * frame:GetHeight() * 5
	
	print(x, y)
	return x, y
end

function CustomCompactRaidGroup_InitializeForGroup(frame, groupIndex)
	local x, y = getRaidGroupPos(frame, groupIndex)
	
	frame:ClearAllPoints();
	frame:SetPoint("TOPLEFT", x, y);
end

function CustomCompactRaidGroup_UpdateBorder(frame)
	local groupIndex = frame:GetID();
	local x, y = getRaidGroupPos(frame, groupIndex)
	
	frame:ClearAllPoints();
	frame:SetPoint("TOPLEFT", x, y);
end

function CustomCompactRaidGroup_UpdateUnits(frame)
	local groupIndex = frame:GetID();
	local x, y = getRaidGroupPos(frame, groupIndex)
	
	frame:ClearAllPoints();
	frame:SetPoint("TOPLEFT", x, y);
end
--]]

--hooksecurefunc("CompactRaidGroup_UpdateLayout", CustomCompactRaidGroup_UpdateLayout)
--hooksecurefunc("CompactRaidGroup_InitializeForGroup", CustomCompactRaidGroup_InitializeForGroup)
--hooksecurefunc("CompactRaidGroup_UpdateBorder", CustomCompactRaidGroup_UpdateBorder)
--hooksecurefunc("CompactRaidGroup_UpdateUnits", CustomCompactRaidGroup_UpdateUnits)