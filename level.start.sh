#!/bin/bash

# clear
echo "$1" > ~/.lb/current-level
cp -p "$HOME/lernbash/level.ende.sh" ~/.fertig

if [ -f "$HOME/lernbash/level/$1/start.txt" ]; then
    cat "$HOME/lernbash/level/$1/start.txt"
else
    echo "Level $1 ist leider kaputt... Konnte die start-datei nicht finden."
fi
