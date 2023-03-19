#!/bin/bash

clear

currentLevel=$1
(( nextLevel = currentLevel + 1 ))
(( prevLevel = currentLevel - 1 ))

if [ ! -f "$HOME/.lb/fertig/$prevLevel" ]; then
	echo "Du hast Level $prevLevel noch nicht abgeschlossen."
	echo "Schließe das vorherige Level erst ab."
	exit 1
fi

echo "$currentLevel" > "$HOME/.lb/current-level"
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
	exit 1
fi
