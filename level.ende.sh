#!/bin/bash
currentLevel=$(cat "$HOME/.lb/current-level")

clear
rm -f $HOME/.fertig
touch "$HOME/.lb/fertig/$currentLevel"

# TODO execute pre-ende if exists
cat "$HOME/lernbash/level/$currentLevel/ende.txt"
# TODO execute post-ende if exists
