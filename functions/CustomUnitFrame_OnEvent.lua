Vanilla_CompactUnitFrame_OnEvent = CompactUnitFrame_OnEvent;

function CustomUnitFrame_OnEvent(self, event, ...)
	local arg1, arg2, arg3, arg4 = ...;
	if ( arg1 == self.unit or arg1 == self.displayedUnit ) then
		if ( event == "UNIT_HEALTH" or event == "UNIT_HEALTH_FREQUENT" ) then
			CompactUnitFrame_UpdateHealthColor(self);
		end
	end	
	
	Vanilla_CompactUnitFrame_OnEvent(self, event, ...);
end

CompactUnitFrame_OnEvent = CustomUnitFrame_OnEvent;