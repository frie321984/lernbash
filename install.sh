#!/bin/bash

# Initialisiere einen leeren Userordner in dem 
# schon ~/lernbash/ geklont wurde wie in SETUP.md
# beschrieben.

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "scriptpath: $SCRIPTPATH"
export lernbashpath=$SCRIPTPATH
mkdir -p ~/.lb/fertig
mv -i ~/.bashrc ~/.bashrc.original
ln -s ~/lernbash/.bashrc ~/.bashrc