#!/bin/bash

# Installiere einen leeren Userordner in dem 
# schon lernbash geklont wurde (wie in SETUP.md
# beschrieben).

set -e

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "scriptpath: $SCRIPTPATH"

echo "$SCRIPTPATH" > "$HOME/.lernbashpath"
mkdir $HOME/.lb
mkdir -p "$HOME/.lb/fertig"
if [ -f "$HOME/.bashrc" ]; then
   mv -i "$HOME/.bashrc" "$HOME/.bashrc.original"
fi
ln -sf "$SCRIPTPATH/.bashrc" "$HOME/.bashrc"

# programme die installiert sein sollten
tree --version
cat
pwd
