#!/bin/bash

# Installiere einen leeren Userordner in dem 
# schon lernbash geklont wurde (wie in SETUP.md
# beschrieben).

set -e

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "scriptpath: $SCRIPTPATH"
echo "$SCRIPTPATH" > "$HOME/.lernbashpath"
mkdir -p ~/.lb/fertig
mv -i ~/.bashrc ~/.bashrc.original
ln -sf "$SCRIPTPATH/.bashrc" ~/.bashrc

# programme die installiert sein sollten
tree --version
cat --version
pwd
