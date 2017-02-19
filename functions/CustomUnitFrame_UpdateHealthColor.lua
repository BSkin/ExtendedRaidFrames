function CustomUnitFrame_UpdateHealthColor(frame)
	local r, g, b;
	if ( not UnitIsConnected(frame.unit) ) then
		--Color it gray
		r, g, b = 0.5, 0.5, 0.5;
	else
		if ( frame.optionTable.healthBarColorOverride ) then
			local healthBarColorOverride = frame.optionTable.healthBarColorOverride;
			r, g, b = healthBarColorOverride.r, healthBarColorOverride.g, healthBarColorOverride.b;
		else
			--Try to color it by class.
			local localizedClass, englishClass = UnitClass(frame.unit);
			local classColor = RAID_CLASS_COLORS[englishClass];
			if ( UnitIsPlayer(frame.unit) and classColor and frame.optionTable.useClassColors ) then
				-- Use class colors for players if class color option is turned on
				r, g, b = classColor.r, classColor.g, classColor.b;
			elseif ( CompactUnitFrame_IsTapDenied(frame) ) then
				-- Use grey if not a player and can't get tap on unit
				r, g, b = 0.1, 0.1, 0.1;
			elseif ( frame.optionTable.colorHealthBySelection ) then
				-- Use color based on the type of unit (neutral, etc.)
				if ( frame.optionTable.considerSelectionInCombatAsHostile and CompactUnitFrame_IsOnThreatListWithPlayer(frame.displayedUnit) ) then
					r, g, b = 1.0, 0.0, 0.0;
				else
					r, g, b = UnitSelectionColor(frame.unit, frame.optionTable.colorHealthWithExtendedColors);
				end
			elseif ( UnitIsFriend("player", frame.unit) ) then
				r, g, b = CustomUnitFrame_GetHealthColorFromPercentage(frame);
			else
				r, g, b = 1.0, 0.0, 0.0;
			end
		end
	end
	if ( r ~= frame.healthBar.r or g ~= frame.healthBar.g or b ~= frame.healthBar.b ) then
		frame.healthBar:SetStatusBarColor(r, g, b);

		if (frame.optionTable.colorHealthWithExtendedColors) then
			frame.selectionHighlight:SetVertexColor(r, g, b);
		else
			frame.selectionHighlight:SetVertexColor(1, 1, 1);
		end
		
		frame.healthBar.r, frame.healthBar.g, frame.healthBar.b = r, g, b;
	end
end

function CustomUnitFrame_GetHealthColorFromPercentage(frame)
	local r, g, b;

	local maxR, maxG, maxB = 0.0, 1.0, 0.0;
	local minR, minG, minB = 1.0, 0.0, 0.0;
	local healthPercentage = UnitHealth(frame.unit) / UnitHealthMax(frame.unit);
	local healthPercentageSquared = healthPercentage  ^ 2;

	r = maxR * healthPercentageSquared + minR * (1.0 - healthPercentageSquared);
	g = maxG * healthPercentageSquared + minG * (1.0 - healthPercentageSquared);
	b = maxB * healthPercentageSquared + minB * (1.0 - healthPercentageSquared); 

	return r, g, b;
end

hooksecurefunc("CompactUnitFrame_UpdateHealthColor", CustomUnitFrame_UpdateHealthColor)