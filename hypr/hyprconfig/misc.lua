-- Miscellanous
-- https://wiki.hypr.land/configuring/core/config-options/

-- Per audio al momento usa app grafica Pavu/Volume Control

hl.config({

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		-- Disabilita logo e wallpapaer pre-defeniti di Hyrpland
	},

	cursor = {
		inactive_timeout = 3,
		-- Nasconde il cursore del mouse/touchpad dopo 3 secondi di inattività
		hide_on_key_press = true,
		-- Nasconde il cursore del mouse/touchpad mentre stai scrivendo
	},
})
