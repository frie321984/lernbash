#!/bin/bash
clear
cat $lernbashpath/banner

# if [ -f ~/.lb/current-level ]; then


cat << EOF
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
██░██░██▄██░██░▄▄█░▄▄██
██░▄▄░██░▄█░██░▄██░▄▄██
██░██░█▄▄▄█▄▄█▄███▄▄▄██
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Oh du steckst fest? Vielleicht hilft dir das weiter:

Diese Kapitel kannst du starten:

lvl1
EOF
for dir in $(ls -d $lernbashpath/level/*); do
    lvl=$(basename "$dir")
    i=$((lvl - 1))
    if [ -f "/home/hera/.lb/fertig/$i" ]; then
        echo "lvl$lvl"
    fi
done
cat << EOF

Zeige diese Hilfe nochmal an mit:

lernbash

Wenn das nicht weiter hilft, frage bitte
deine Lehrerin oder Lehrer um Rat.

EOF
