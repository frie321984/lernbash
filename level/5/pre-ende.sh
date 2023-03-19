#!/bin/bash

if [ "$(basename ${PWD})" != "texte" ]; then
    echo 
else
    echo "Du bist immer noch im texte-Ordner..."
    pwd
    echo 
    echo "Probiere es nochmal mit "
    echo "cd .."
    exit 1
fi
