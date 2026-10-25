#!/bin/bash

echo "Installazione delle dipendenze per Hyprland..."

# Aggiornamento generale del sistema
sudo pacman -Syu
sudo pacman -S paru

# Installazione dei pacchetti necessari alla config di Hyprland
# oppure programmi che uso abitualmente
sudo paru -S \
  neovim \
  kitty \
  fish \
  fzf \
  j4-dmenu-desktop \
  yazi \
  btop \
  ttf-nerd-fonts-symbols \
  nmtui \
  zen-browser-bin \
  grim \
  slurp \
  jq \
  wl-clipboard \
  cliphist \
  qt5ct \
  qt6ct \
  swaybg \
  waybar \
  kalker \
  hyprlock \
  hypridle \
  power-profiles-daemon

echo "Installazione completata!"
