-- Impostazioni sulle shortcut e comandi da tastiera vari di Hyprland
-- NB: Finestra == qualsiasi programma aperto, Schermo = schermo virtuale o monitor

-- https://wiki.hypr.land/configuring/core/dispatchers/
-- https://wiki.hypr.land/configuring/core/binds/

local mainMod = "SUPER"
-- alias per il tasto SUPER/CMD/Windows/ecc.

local terminal = "kitty -d ~"
local browser = "zen-browser"
local code = "kitty -d ~ -e nvim"
local fileManager = "kitty -e yazi ~"
local menu = "~/.config/hypr/scripts/launcher.sh"
local network = "kitty -e nmtui"
local power_profile = "~/.config/hypr/scripts/power_profile.sh"
local calculator = "kitty -e kalker"
local clipboard = "kitty -e ~/.config/hypr/scripts/clipboard.sh"
local screenshot = "~/.config/hypr/scripts/screenshot.sh"
local screenshot_full = "~/.config/hypr/scripts/screenshot.sh full"
local manager = "kitty -e btop"
local discord = "discord --enable-features=UseOzonePlatform --ozone-platform=wayland"
-- Alias per i programmi principali
-- Per cambiarli basta modificare il termine sulla destra delle assegnazioni

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
-- SUPER + T: apre il terminale
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- SUPER + Q: chiude la finestra attiva
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
-- SUPER + E: apre file manager
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
-- SUPER + F: manda fullscreen la finestra attiva
hl.bind(mainMod .. " + Z", hl.dsp.window.float({ action = "toggle" }))
-- SUPER + Z: attiva o disattiva la modalità float per la finestra attiva
hl.bind(
	mainMod .. " + SUPER_L",
	hl.dsp.exec_cmd(menu, { float = true, border_size = 0, max_size = { 800, 500 } }),
	{ release = true }
)
-- SUPER: apre o chiude menù applicazioni
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser))
-- SUPER + W: apre il browser
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(code))
-- SUPER + C: apre l'editor di testo
hl.bind(
	mainMod .. " + V",
	hl.dsp.exec_cmd(clipboard, { float = true, border_size = 0, max_size = { 800, 500 } }),
	{ release = true }
)
-- SUPER + V: apre clipboard
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(network, { float = true, border_size = 0, max_size = { 800, 500 } }))
-- SUPER + R: apre impostazioni wifi, bluetooth, vpn
hl.bind("XF86Calculator", hl.dsp.exec_cmd(calculator, { float = true, border_size = 0, max_size = { 800, 500 } }))
-- XF86Calculator: apre calcolatrice
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(manager))
-- SUPER + M: apre applicazione per visionare vari paramentri: temperature, uso cpu/gpu, ecc.
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(discord))
-- SUPER + D: apre Discord (bypassa system e imposta flag d'ambiente per risolvere problema telecamare/condivisione schermo)-- Apre Discord (bypassa system e imposta flag d'ambiente per risolvere problema telecamare/condivisione schermo)

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"))
-- SUPER + L: blocco schermo

hl.bind(mainMod .. " + SHIFT + ESCAPE", hl.dsp.exec_cmd("shutdown -h now"))
-- SUPER + SHIFT + ESC: spegne la macchina

hl.bind("Print", hl.dsp.exec_cmd(screenshot), { release = true })
-- Print: esegue screenshot di una porzione di area da selezionare
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(screenshot_full))
-- SHIFT + Print: Esegue screenshot dell'intero schermo
hl.bind("XF86Launch2", hl.dsp.exec_cmd(power_profile))
-- XF86Launch2/Diamond: passa dalla modalità energetica attuale alla successiva
-- (SAV->BAL, BAL->PER, PER->SAV)

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
-- SUPER + arrow key: sposta il focus verso la finestra indicata dalla arrow key

for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + ALT + " .. key, hl.dsp.window.move({ workspace = i }))
end
-- SUPER + [0-9]: sposta il focus allo schermo [0-9] (si parte da 1 e 0 coincide con la 10a e ultima)
-- SUPER + ALT + [0-9]: sposta la finestra corrente nello schermo [0-9]

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + ALT + S", hl.dsp.window.move({ workspace = "special:magic" }))
-- SUPER + S: apre lo schermo speciale, in overlay sull'attuale finestra (potresti usare ad esempio per Discord e Btop)
-- SUPER + ALT + S: sposta la finestra corrente nello schermo speciale

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
-- SUPER + CMB: per spostarsi avanti e indietro tra gli schermi
hl.bind(mainMod .. " + ALT + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + ALT + left", hl.dsp.focus({ workspace = "e-1" }))
-- SUPER + ALT + left/right: per spostarsi avanti e indietro tra gli schermi
-- ^ Preferibile usare le gesture (trovi indicazioni in input.lua)

hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
-- SUPER + CTRL + arrow key: ingradisce/rimpiciollisce la finestra attiva lungo il verso della arrow key

hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
-- SHIFT + SUPER + arrow key: scambia la finestra in focus con quella in direzione della arrow key

hl.bind(mainMod .. " + X", hl.dsp.layout("togglesplit"))
-- SUPER + X: ruota le finestre del container corrente
-- https://wiki.hypr.land/configuring/layouts/

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
-- SUPER + LMB: per spostare la finestra in modalità float (puoi usarlo anche per muoverlo tra monitor diversi)
-- SUPER + RMB: per ridimensionare la finestra in modalità float

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
-- Tasti per regolare volume e luminosità schermo

-- hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
-- hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
-- Tasti per gestire le playlist (prossima canzone, precedente, pausa ecc.)
