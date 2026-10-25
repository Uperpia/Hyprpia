-- Processi da avviare con start-Hyprland
-- https://wiki.hypr.land/configuring/core/autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd(
		"systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP QT_QPA_PLATFORMTHEME GTK_THEME"
	)
	-- Prende la config di qt6ct e permette di usarla anche i programmi avviati con wrapper Systemd
	hl.exec_cmd("swaybg -i ~/Pictures/Wallpapers/lagtrain.jpg -m fill")
	-- Carica lo sfondo all'avvio
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	-- Avvia la clipboard
	hl.exec_cmd("waybar")
	-- Avvia Waybar
	hl.exec_cmd("hypridle")
	-- Avvia demone che gestisce blocco/sospensione schermo per inattività
end)
