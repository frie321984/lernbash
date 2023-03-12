#!/bin/bash

# Initialisiere einen leeren Userordner in dem 
# schon ~/lernbash/ geklont wurde wie in SETUP.md
# beschrieben.

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "scriptpath: $SCRIPTPATH"
echo "$SCRIPTPATH" > "$HOME/.lernbashpath"
mkdir -p ~/.lb/fertig
mv --backup ~/.bashrc ~/.bashrc.original
ln -s ~/lernbash/.bashrc ~/.bashrc