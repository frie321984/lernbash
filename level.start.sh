#!/bin/bash

clear
echo "\$1: $1"
cat "$1" > ~/.lb/current-level
cp -p "$HOME/lernbash/level.ende.sh" ~/.fertig

cat "$HOME/lernbash/level/$1/start.txt"
