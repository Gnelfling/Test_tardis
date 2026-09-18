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
        pos = Vector(0.7369, -162.16, -264.18),
        ang = Angle(0, -90, 0),
        width = 46.5,
        height = 100.5,
        thickness = -5,
    },

    Fallback = {
        pos = Vector(-0.035645, -255.151367, -315.969727),
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
            posoffset = Vector(99.30875, 0.326088, -51.554375),
            angoffset = Angle(0.285, 179.987, 0.006),
        },
    },
}

T.Exterior = {
    Model = "models/FuzzyLeo/magicdoor/magicdoorframe.mdl",
    DoorAnimationTime = 0.7,

    Portal = {
        pos = Vector(7.07, -2.19, 42.97),
        ang = Angle(0, 0, 0),
        width = 48.5,
        height = 108.5,
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
            posoffset = Vector(-7.07, 2.19, -42.97),
        },
        vortex = {
            model = "models/props_skybox/coast01.mdl",
            pos = Vector(0, 0, 50),
            ang = Angle(0, 0, 0),
            scale = 1,
        },
    },
}

TARDIS:AddInterior(T)
