#!/bin/bash

# Toggle: chiude se già aperto
if pkill -f "kitty --class launcher"; then
  exit 0
fi

# Passa l'esecuzione a systemd-run. L'app si sgancia completamente e Kitty si chiude all'istante.
kitty --class launcher -e j4-dmenu-desktop --no-generic --dmenu="fzf --prompt='Run: ' --info=hidden" --wrapper="systemd-run --user --quiet"
