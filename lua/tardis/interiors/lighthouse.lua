-- Partial definitions completed at runtime.
---@diagnostic disable: missing-fields

local T = {}

T.Base = "base"
T.Name = "Lighthouse"
T.ID = "lighthouse_shed"

T.Interior = {
    Model = "models/HalfLife2BakedCoast/Coast_House22.mdl",

    Sounds = {
        Idle = {},
    },

    Portal = {
        pos = Vector(1.535156, -256.522461, -265),
        ang = Angle(0, 90, 0),
        width = 7500.5,
        height = 11000.5,
        thickness = 6000,
    },

    Fallback = {
        pos = Vector(1.535156, -256.522461, -312),
        ang = Angle(0, 0, 0),
    },

    Light = {
        color = Color(255, 220, 170),
        pos = Vector(0, 0, 80),
        brightness = 2,
        warn_brightness = 1,
    },

    Parts = {
        door = {
            model = "models/FuzzyLeo/magicdoor/magicdoordoor.mdl",
            posoffset = Vector(0, 0, -50.55),
            angoffset = Angle(0, 0, 0),
        },
    },
}

T.Exterior = {
    Model = "models/FuzzyLeo/magicdoor/magicdoorframe.mdl",
    DoorAnimationTime = 0.7,

    Portal = {
        pos = Vector(8,0,55),
        ang = Angle(0, 0, 0),
        width = 50.5,
        height = 110.5,
    },

    Fallback = {
        pos = Vector(25, 0, 5),
        ang = Angle(0, 0, 0),
    },

    Light = {
        enabled = true,
        pos = Vector(0, 0, 100),
        color = Color(255, 220, 170),
        dynamicpos = Vector(0, 0, 100),
        dynamicbrightness = 2,
        dynamicsize = 256,
    },

    Parts = {
        door = {
            model = "models/FuzzyLeo/magicdoor/magicdoordoor.mdl",
            posoffset = Vector(0, 0 ,-55),
            angoffset = Angle(0, 180, 0),
        },
        vortex = {
            model = "models/propper/coast_prop1/coastprop_a1.mdl",
            pos = Vector(0, 0, 90),
            ang = Angle(0, 25, 0),
            scale = 1.5,
        },
    },
}

TARDIS:AddInterior(T)
