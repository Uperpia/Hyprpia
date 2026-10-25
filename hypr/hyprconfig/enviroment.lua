-- Variabili d'ambiente
-- https://wiki.hypr.land/configuring/core/environment-variables/

hl.env("XCURSOR_SIZE", "24")
-- Dimensione mouse su finestre x11
hl.env("HYPRCURSOR_SIZE", "24")
-- Dimensione mouse su finestre native Wayland

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
-- Forza le app in Electron (Discors, VS Studio, ecc.) a usare Wayland
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "0")
-- Forza le app Qt a usare Wayland
-- Serve a risolvere il problema con lo scaling che potrebbero riscontrare alcune app
-- Non copre tutti i casi (ad esempio per Emacs conviene scaricare direttamente emacs-wayland)

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
-- Applica il tema di QT6 setting a tutte le app QT6

hl.env("GTK_THEME", "Adwaita:dark")
-- Applica tema scuro per applicazioni GTK

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
-- Forza a non usare lo scaling frazionario per le app X11
