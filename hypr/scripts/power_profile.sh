#!/bin/bash

# Legge il profilo energetico attuale
CURRENT=$(powerprofilesctl get)

# Definisce la rotazione logica
case "$CURRENT" in
    "power-saver")
        NEXT="balanced"
        ;;
    "balanced")
        NEXT="performance"
        ;;
    "performance"|*)
        NEXT="power-saver"
        ;;
esac

# Applica il nuovo profilo
powerprofilesctl set "$NEXT"
