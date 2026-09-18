-- Partial definitions completed at runtime.
---@diagnostic disable: missing-fields

local E = {}

E.ID = "lighthouse_shed"
E.Name = "Lighthouse"
E.Base = "base"

E.Model = "models/fuzzyleo/magicdoor/treeframe.mdl"

E.Portal = {
    -- Placeholder values: tune against the exterior frame in-game.
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    width = 64,
    height = 96,
    thickness = 42,
    inverted = true,
}

-- Deliberately different from Portal.pos.
E.Fallback = {
    pos = Vector(100, 0, 0),
    ang = Angle(0, 0, 0),
}

E.Light = {
    enabled = true,
    pos = Vector(0, 0, 100),
    color = Color(255, 220, 170),
    dynamicpos = Vector(0, 0, 100),
    dynamicbrightness = 2,
    dynamicsize = 256,
}

E.Parts = {
    lighthouse_door = {
        model = "models/fuzzyleo/magicdoor/treedoor.mdl",
        posoffset = Vector(0, 0, 0),
        angoffset = Angle(0, -90, 0),
    },
}

TARDIS:AddExterior(E)
