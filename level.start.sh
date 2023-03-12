#!/bin/bash

# clear
echo "$1" > ~/.lb/current-level
cp -p "$lernbashpath/level.ende.sh" ~/.fertig

if [ -f "$lernbashpath/level/$1/start.txt" ]; then
    cat "$lernbashpath/level/$1/start.txt"
else
    echo "Level $1 ist leider kaputt... Konnte die start-datei nicht finden."
fi
