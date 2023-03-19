#!/bin/bash

if [ "$(basename ${PWD})" != "Texte" ]; then
    echo 
else
    echo "Du bist immer noch im Texte-Ordner..."
    pwd
    echo 
    echo "Probiere es nochmal mit "
    echo "cd .."
    exit 1
fi
