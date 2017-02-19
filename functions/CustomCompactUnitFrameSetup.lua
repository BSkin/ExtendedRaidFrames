function CustomCompactUnitFrameSetup(frame)
	frame.background:SetTexture("Interface\\Addons\\ExtendedRaidFrames\\Resources\\solidBG");
	frame.healthBar:SetStatusBarTexture("Interface\\Addons\\ExtendedRaidFrames\\Resources\\solid.tga", "BORDER");
end

hooksecurefunc("DefaultCompactUnitFrameSetup", CustomCompactUnitFrameSetup)