#!/bin/bash
if [ -f "$HOME/.lb/current-level" ]; then
    currentLevel=$(cat "$HOME/.lb/current-level")
else
    clear
    ~/lernbash/geht-nicht.sh
    exit 0
fi

clear
# todo das mit dem .fertig ist noch zu umständlich und kann
# jetzt sicher vereinfacht werden.
rm -f $HOME/.fertig
rm "$HOME/.lb/current-level"
touch "$HOME/.lb/fertig/$currentLevel"

# TODO execute pre-ende if exists
if [ -f "$HOME/lernbash/level/$currentLevel/ende.txt" ]; then
    cat "$HOME/lernbash/level/$currentLevel/ende.txt"
else
    echo "Level $currentLevel ist leider kaputt. Konnte ende.txt nicht finden."
fi
# TODO execute post-ende if exists
