#!/bin/bash

# Installiere einen leeren Userordner in dem 
# schon lernbash geklont wurde (wie in SETUP.md
# beschrieben).

set -e

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "scriptpath: $SCRIPTPATH"

read -n1 -p "Deine .bashrc Datei wird ersetzt. Weitermachen (y|N)? " doit

if [ doit != 'y' ]; then
	echo "Abbruch"
	exit 1	
fi

echo "$SCRIPTPATH" > "$HOME/.lernbashpath"
mkdir -p ~/.lb/fertig
mv -i ~/.bashrc ~/.bashrc.original
ln -sf "$SCRIPTPATH/.bashrc" ~/.bashrc

# programme die installiert sein sollten
tree --version
cat --version
pwd
