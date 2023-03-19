#!/bin/bash

clear

currentLevel=$1
echo "$currentLevel" > ~/.lb/current-level
(( nextLevel = currentLevel + 1 ))
echo $nextLevel
cp -p "$lernbashpath/level.ende.sh" ~/.fertig

echo "-------------"
echo "| Level $currentLevel |"
echo "-------------"

if [ -f "$lernbashpath/level/$currentLevel/start.sh" ]; then

    . "$lernbashpath/level/$currentLevel/start.sh"
elif [ -f "$lernbashpath/level/$currentLevel/start.txt" ]; then
    cat "$lernbashpath/level/$currentLevel/start.txt"

else
    echo "Level $1 ist leider kaputt... Konnte die start-datei nicht finden."
fi
