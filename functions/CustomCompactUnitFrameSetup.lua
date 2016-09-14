Vanilla_CustomCompactUnitFrameSetup = DefaultCompactUnitFrameSetup;

function CustomCompactUnitFrameSetup(frame)
	Vanilla_CustomCompactUnitFrameSetup(frame);
	frame.background:SetTexture("Interface\\Addons\\ExtendedRaidFrames\\Resources\\solidBG");
	frame.healthBar:SetStatusBarTexture("Interface\\Addons\\ExtendedRaidFrames\\Resources\\solid.tga", "BORDER");
end

DefaultCompactUnitFrameSetup = CustomCompactUnitFrameSetup