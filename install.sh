#!/bin/bash

# Initialisiere einen leeren Userordner in dem 
# schon ~/lernbash/ geklont wurde wie in SETUP.md
# beschrieben.

mkdir -p ~/.lb/fertig
mv -i ~/.bashrc ~/.bashrc.original
ln -s ~/lernbash/.bashrc ~/.bashrc