#!/bin/bash
# clear
if [ -f "$HOME/.lb/current-level" ]; then
    currentLevel=$(cat "$HOME/.lb/current-level")
else
    # es gibt gerade kein aktives level
    ~/lernbash/geht-nicht.sh
    exit 0
fi

# execute pre-ende if exists
if [ -f "$HOME/lernbash/level/$currentLevel/pre-ende.sh" ]; then
    . "$HOME/lernbash/level/$currentLevel/pre-ende.sh"

    retVal=$?
    if [ $retVal -ne 0 ]; then
        echo "Du kannst das Level leider noch nicht beenden."
        exit 0
    fi
fi

rm -f $HOME/.fertig
rm "$HOME/.lb/current-level"
touch "$HOME/.lb/fertig/$currentLevel"

if [ -f "$HOME/lernbash/level/$currentLevel/ende.txt" ]; then
    cat "$HOME/lernbash/level/$currentLevel/ende.txt"
else
    echo "Level $currentLevel ist leider kaputt. Konnte ende.txt nicht finden."
fi

# TODO execute post-ende if exists
