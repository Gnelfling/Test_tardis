---@class part_lighthouse_door : gmod_tardis_part
local PART = TARDIS:NewPart()

PART.ID = "lighthouse_door"
PART.Name = "Lighthouse Door"
PART.Model = "models/fuzzyleo/magicdoor/treedoor.mdl"
PART.AutoSetup = true
PART.AutoPosition = true
PART.Animate = true
PART.AnimateSpeed = 1.5
PART.Collision = true
PART.PortalNoCollide = true
PART.NoStrictUse = true
PART.BypassIsomorphic = true

-- No custom state is needed yet.
-- If state is added later, namespace it with lighthouse_shed_ and use
-- self:GetData()/self:SetData().

TARDIS:AddPart(PART)
