#!/bin/bash
currentLevel=$(cat "$HOME/.lb/current-level")

clear
rm -f $HOME/.fertig
touch "$HOME/.lb/fertig/$currentLevel"

# TODO execute pre-ende if exists
if [ -f "$HOME/lernbash/level/$currentLevel/ende.txt" ]; then
    cat "$HOME/lernbash/level/$currentLevel/ende.txt"
else
    echo "Level $currentLevel ist leider kaputt. Konnte ende.txt nicht finden."
fi
# TODO execute post-ende if exists
