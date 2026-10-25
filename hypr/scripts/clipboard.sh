#!/bin/bash

# 1. fzf salva la tua scelta in una variabile
scelta=$(cliphist list | fzf --prompt="Clipboard> " --info=hidden)

# 2. Se hai effettivamente scelto qualcosa (e non hai premuto ESC per annullare)
if [ -n "$scelta" ]; then
  # Decodifica e copia negli appunti disconnettendo l'output
  echo "$scelta" | cliphist decode | wl-copy >/dev/null 2>&1
fi

# Forza la chiusura immediata dello script e del terminale
exit 0
