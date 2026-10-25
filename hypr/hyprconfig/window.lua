-- Impostazioni di finestre e schermi virtuali
-- https://wiki.hypr.land/configuring/core/rules/

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--    name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.config({
	dwindle = {
		preserve_split = true,
		-- Garantisce che anche aprendo o ridimensionando finestre, Hyprlando non le riallocchi automaticamente
		-- Rende più consistente l'uso del comando togglesplit
	},
})
-- Impostazioni del layout Dwindle
