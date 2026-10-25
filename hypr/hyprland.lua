-- https://wiki.hypr.land/

-- I require sono i corrispettivi degli include di C
-- Per accedere alle impostazioni di ogni sezione aprire il corrispettivo file.lua nella cartella hyprconfig

-- Per installare la config basta copiare l'intera cartella (hypr) in ~/.config/
-- Nella cartella scripts sono presenti alcuni programmi bash che usa la config per gestire servizi basilari (clipboard, screenshot, ecc), potrebbe essere necessario renderli manualmente eseguibili con chmod
-- Eccezione è il programma install_depencies.sh che invece aggiorna il sistema e installa tutte i pacchetti usati dalla config (quindi obbligatorio eseguire per la corretta installazione)
-- Infine in otherconfig c'è il backup della config di altre app (waybar, ecc.), copiare il suo contenuto in ~/.config/

require("hyprconfig/monitor")
require("hyprconfig/autostart")
require("hyprconfig/enviroment")
require("hyprconfig/permission")
require("hyprconfig/appearance")
require("hyprconfig/misc")
require("hyprconfig/input")
require("hyprconfig/shortcuts")
require("hyprconfig/window")
