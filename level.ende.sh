#!/bin/bash
$lernbashpath/clear.sh
if [ -f "$HOME/.lb/current-level" ]; then
    currentLevel=$(cat "$HOME/.lb/current-level")
else
    # es gibt gerade kein aktives level
    $lernbashpath/geht-nicht.sh
    exit 0
fi

let "nextlvl=$currentLevel + 1"

# Wenn es ein ende script gibt, nimm das und ignoriere alles andere
if [ -f "$lernbashpath/level/$currentLevel/ende.sh" ]; then
    . "$lernbashpath/level/$currentLevel/ende.sh"

    retVal=$?
    if [ $retVal -ne 0 ]; then
        echo "Du kannst das Level leider noch nicht beenden."
        exit 1
    fi

    rm -f $HOME/.fertig
    rm "$HOME/.lb/current-level"
    touch "$HOME/.lb/fertig/$currentLevel"
    if [ -d "$lernbashpath/level/$nextlvl/" ]; then
        echo
        echo "Das war Level $currentLevel. Weiter geht's mit"
        echo "lvl$nextlvl"
    else
        echo
        echo "Das war Level $currentLevel."
        echo "Dies ist vorerst das Ende von Lernbash. Vielen Dank für's Spielen!"
    fi

    exit 0
fi

# execute pre-ende if exists
if [ -f "$lernbashpath/level/$currentLevel/pre-ende.sh" ]; then
    . "$lernbashpath/level/$currentLevel/pre-ende.sh"

    retVal=$?
    if [ $retVal -ne 0 ]; then
        echo "Du kannst das Level leider noch nicht beenden."
        exit 0
    fi
fi

rm -f $HOME/.fertig
rm "$HOME/.lb/current-level"
touch "$HOME/.lb/fertig/$currentLevel"

if [ -f "$lernbashpath/level/$currentLevel/ende.txt" ]; then
    cat "$lernbashpath/level/$currentLevel/ende.txt"
else
    echo "Level $currentLevel ist leider kaputt. Konnte ende.txt nicht finden."
    exit 1
fi

if [ -d "$lernbashpath/level/$nextlvl/" ]; then
    echo
    echo "Das war Level $currentLevel. Weiter geht's mit"
    echo "lvl$nextlvl"
else
    echo
    echo "Das war Level $currentLevel."
    echo "Dies ist vorerst das Ende von Lernbash. Vielen Dank für's Spielen!"
fi

# TODO execute post-ende if exists
