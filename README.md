# Hyprpia
The purpose of this repo is to make my Hyprland configuration easily importable/exportable across multiple machines. The repo is also public so others can easily view the dotfiles, but keep in mind that this is an extremely minimal config: it is GUI-less, terminal and shortcut-based and heavily tailored to my specific needs and workflow. Therefore, I strongly advise against installing it.

For example, to manage power profiles, I use a "Diamond" key located on my laptop (HP Victus 15), which is typically not present on other keyboards. Additionally, I haven't implemented any method—not even a TUI—to manage Bluetooth, as I currently have no devices to connect to this machine. Overall, the config is still incomplete; I add new code as I feel like it or whenever new needs arise.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7d6271a3-7398-4041-99e1-5eebd3bddef2" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6ba7af59-4b33-4094-99dc-faa867b559e2" />

## How to install
1. Copy the contents of the entire directory to `~/.config/` (making a backup before proceeding is recommended).
2. Make all scripts within `~/.config/hypr/scripts` executable (for example, using `chmod`).
3. Run `~/.config/scripts/install_dependencies.sh`.
At this point, the process is essentially complete. Some optional additions include installing `lazyvim` and changing the wallpaper path in `~/.config/hypr/hyprconfig/autostart.lua` (requires restarting Hyprland).

## install_dependencies.sh
This script installs a series of packages that I use to make the config more interactive/complete (e.g., clipboard, screenshots, etc.). Below is a list of the included programs and their usage.
+ `paru` : package manager alternativo a pacman, comodo perchè permette di installare anche da AUR oltre i repo di Arch/Cachy
+ `neovim` : editor di testo TUI basato su vim (in particolare va poi installato il plugin `lazyvim`
+ `kitty` : emulatore di terminale che supporta ootb trasparenze e rappresentazioni delle immagini a qualità nativa
+ `fish` : shell che supporta autocompletamento/suggerimenti dei comandi e definizioni rapide di alias
+ `fzf` :
+ ` 
