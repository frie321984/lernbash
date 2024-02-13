#!/bin/bash

clear
currentLevel=$1
(( nextLevel = currentLevel + 1 ))
(( prevLevel = currentLevel - 1 ))

if [ "$currentLevel" != "1" ]; then
	if [ ! -f "$HOME/.lb/fertig/$prevLevel" ]; then
		echo "Du hast Level $prevLevel noch nicht abgeschlossen."
		echo "Schließe das vorherige Level erst ab."
		exit 1
	fi
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

if [ -f "$lernbashpath/level/$currentLevel/check.sh" ]; then
	while true; do
		"$lernbashpath/level/$currentLevel/check.sh"
		if [ $? -eq 0 ]; then
			echo "Sehr gut! Beende jetzt das Level mit " > $(cat "$HOME/.lb/tty")
			echo "fertig" > $(cat "$HOME/.lb/tty")
			echo -e "\033[?25h" > $(cat "$HOME/.lb/tty")
			break
		fi
		sleep 3
	done &
	echo $! > "$HOME/.lb/whilepid"
fi

