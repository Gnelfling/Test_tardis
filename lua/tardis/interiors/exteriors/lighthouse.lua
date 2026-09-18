-- Partial definitions completed at runtime.
---@diagnostic disable: missing-fields

local E = {}

E.ID = "lighthouse_shed"
E.Name = "Lighthouse"
E.Base = "base"

E.Model = "models/FuzzyLeo/magicdoor/treeframe.mdl"
E.DoorAnimationTime = 0.7

E.Portal = {
    pos = Vector(7.07, -2.19, 42.97),
    ang = Angle(0, 0, 0),
    width = 14,
    height = 86,
}

E.Fallback = {
    pos = Vector(25, 0, 5),
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

-- Override the existing core "door" part; do not register a second
-- lighthouse-specific animation part.
E.Parts = {
    door = {
        model = "models/FuzzyLeo/magicdoor/treedoor.mdl",
        posoffset = Vector(-7.07, 2.19, -42.97),
    },
}

TARDIS:AddExterior(E)
