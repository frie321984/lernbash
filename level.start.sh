#!/bin/bash

clear
cp -p "$HOME/lernbash/level/$1/pre-ende.sh" ~/.lb/.pre-ende.sh
cp -p "$HOME/lernbash/level/$1/ende.txt" ~/.lb/ende.txt
cp -p "$HOME/lernbash/level.ende.sh" ~/.fertig

export lblvl=$1

cat "$HOME/lernbash/level/$1/start.txt"
