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

    -- Use the registered core "door" part so its standard switch pose
    -- parameter animation and state synchronization are used.
    Parts = {
        door = {
            model = "models/FuzzyLeo/magicdoor/treedoor.mdl",
        },
    },
}

TARDIS:AddInterior(T)
