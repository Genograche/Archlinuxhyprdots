-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 1,
        gaps_out = 1,

        border_size = 3,

        col = {
            active_border   = "rgba(DB4740FF)",
            inactive_border = { colors = {"rgba(e5b9c6ff)", "rgba(c293a3ff)"}, angle = 45 },
        },

        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
      
--	snap = {
--		enabled = false,
--	},
    },

    decoration = {
        rounding       = 5,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
	--active_opacity   = 1.0,
	--inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 5,
            passes    = 3,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true,-- If true disables the random hyprland logo / anime girl background. :(
        disable_splash_rendering = true,
--	mouse_move_enables_dpms = true
	key_press_enables_dpms = true
    },
})

hl.config({
	cursor = {
		inactive_timeout = 8,
	
	},
})

---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
--	accel_profile = "flat",
	force_no_accel = true,
        touchpad = { 
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = 0 ---0.5,
})


