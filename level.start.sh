#!/bin/bash

export lblvl=$1

clear
cat "$1" > ~/.lb/current-level
cp -p "$HOME/lernbash/level.ende.sh" ~/.fertig

cat "$HOME/lernbash/level/$1/start.txt"
