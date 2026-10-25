-- Impostazioni sulle periferche di input (mouse, touchpad e gesture, tastiera, ecc.)

hl.config({
	input = {
		kb_layout = "it",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
-- Gesture: usare 3 dita per muoverti orizzontalmente tra gli schermi virtuali

-- https://wiki.hypr.land/configuring/core/devices/
