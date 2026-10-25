#!/bin/bash

# Usa $HOME al posto di ~ per l'espansione corretta e imposta la cartella al plurale "Screenshots"
DIR="$HOME/Pictures/Screenshots"
FILE="$DIR/Screen_$(date +'%Y%m%d_%H%M%S').png"

# Crea la cartella se non esiste, evitando che lo script fallisca
mkdir -p "$DIR"

# 1. Se lanci lo script con l'argomento "full", scatta istantaneamente tutto lo schermo
if [ "$1" == "full" ]; then
  grim - | tee "$FILE" | wl-copy
  exit 0
fi

# 2. Altrimenti, unisce le geometrie dei monitor (per il full screen) e delle finestre (per il singolo clic)
GEOMETRY=$( (
  hyprctl monitors -j | jq -r '.[] | "\(.x),\(.y) \(.width)x\(.height)"'
  hyprctl clients -j | jq -r '.[] | select(.mapped == true) | "\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"'
) | slurp)

# Se premi ESC per annullare, esce senza errori
if [ -z "$GEOMETRY" ]; then
  exit 0
fi

# Scatta usando la geometria selezionata dal clic o dal trascinamento
grim -g "$GEOMETRY" - | tee "$FILE" | wl-copy
