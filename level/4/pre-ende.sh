#!/bin/bash

if [ "$(basename ${PWD})" == "Texte" ]; then
    echo 
else
    echo "Du bist noch nicht im Texte-Ordner sondern hier..."
    pwd
    echo 
    echo "Probiere es nochmal mit "
    echo "cd Texte"
    exit 1
fi
