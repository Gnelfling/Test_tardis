-- Partial definitions completed at runtime.
---@diagnostic disable: missing-fields

local T = TARDIS:NewInterior()

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
    -- Reusing the portal position can leave players stuck after arrival.
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

    Parts = {
        lighthouse_door = {
            model = "models/fuzzyleo/magicdoor/treedoor.mdl",
            pos = Vector(0, 0, 0),
            ang = Angle(0, 0, 0),
        },
    },
}

TARDIS:AddInterior(T)
