-- Impostazioni dei monitor
-- Per vedere tutti i monitor connessi aprire terminale ed eseguire "hyprctl monitors all"
-- https://wiki.hypr.land/configuring/core/monitors/

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@144",
	position = "0x0",
	scale = 1.2,
})
-- Monitor integrato nel portatile

hl.monitor({
	output = "DP-1",
	mode = "1920x1080@60",
	position = "auto-left",
	scale = 1.2,
})
-- Monitor esterno connesso tramite USB-C

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
})
-- Configurazione di default, se viene connesso un monitor non noto verrà posizionato alla destra di eDP-1 con la sua sua risoluzione nativa
