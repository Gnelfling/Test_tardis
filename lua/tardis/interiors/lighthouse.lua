-- Partial definitions completed at runtime.
---@diagnostic disable: missing-fields

local T = {}

T.Base = "base"
T.Name = "Lighthouse"
T.ID = "lighthouse_shed"

T.Interior = {
    Model = "models/HalfLife2BakedCoast/Coast_House22.mdl",

    Portal = {
        -- Placeholder values: tune against the lighthouse model in-game.
        pos = Vector(0, 0, 0),
        ang = Angle(0, 0, 0),
        width = 64,
        height = 96,
        thickness = -5,
    },

    -- Deliberately different from Portal.pos.
    Fallback = {
        pos = Vector(0, 100, 0),
        ang = Angle(0, 0, 0),
    },

    Light = {
        color = Color(255, 220, 170),
        pos = Vector(0, 0, 80),
        brightness = 2,
        warn_brightness = 1,
    },

    -- Keep the interior-side core door part.
    Parts = {
        door = {
            model = "models/FuzzyLeo/magicdoor/treedoor.mdl",
        },
    },
}

T.Exterior = {
    Model = "models/FuzzyLeo/magicdoor/treeframe.mdl",
    DoorAnimationTime = 0.7,

    Portal = {
        pos = Vector(7.07, -2.19, 42.97),
        ang = Angle(0, 0, 0),
        width = 14,
        height = 86,
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
            model = "models/FuzzyLeo/magicdoor/treedoor.mdl",
            posoffset = Vector(-7.07, 2.19, -42.97),
        },
    },
}

TARDIS:AddInterior(T)
