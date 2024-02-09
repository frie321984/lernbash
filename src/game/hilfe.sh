#!/bin/bash
clear
cat $lernbashpath/banner

# if [ -f ~/.lb/current-level ]; then

cat ~/.lb/current-level

cat << EOF
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
██░██░██▄██░██░▄▄█░▄▄██
██░▄▄░██░▄█░██░▄██░▄▄██
██░██░█▄▄▄█▄▄█▄███▄▄▄██
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Oh du steckst fest? Vielleicht hilft dir das weiter:

Diese Kapitel kannst du starten:

EOF
for dir in $(ls -d $lernbashpath/level/*); do
    lvl=$(basename "$dir")
    echo "lvl$lvl"
done
cat << EOF

Zeige diese Hilfe nochmal an mit:

lernbash

Wenn das nicht weiter hilft, frage bitte
deine Lehrerin oder Lehrer um Rat.

EOF
