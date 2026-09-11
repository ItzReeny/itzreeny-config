-------------------
---- LOOK AND FEEL ----
-------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,

        border_size = 2,

        -- col.active_border / col.inactive_border became a nested `col` table
        col = {
            active_border = { colors = { "rgba(88C0D0ee)", "rgba(81A1C1ee)" }, angle = 45 },
            inactive_border = "rgba(4D5E80aa)",
        },

        resize_on_border = false,
        allow_tearing = false,

        layout = "scrolling",
    },

    -- NOTE: your original had two `decoration {}` blocks (the second only
    -- bumped blur.passes to 2). Hyprland merges these key-by-key, so I've
    -- combined them into one block with the final effective values.
    decoration = {
        rounding = 10,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        -- https://wiki.hypr.land/Configuring/Basics/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 2, -- merged from the second decoration{} block
            vibrancy = 0.1696,
        },
    },

    dwindle = {
        -- pseudotile = true, -- Master switch for pseudotiling. doesn't work anymore
        preserve_split = true, -- You probably want this
    },

    scrolling = {
        fullscreen_on_one_column = true,
        column_width = 0.5,
        follow_focus = true,
        direction = "right",
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding = 0,
-- })
-- hl.window_rule({
--     name = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding = 0,
-- })
