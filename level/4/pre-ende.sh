#!/bin/bash

if [ "$(basename ${PWD})" == "texte" ]; then
    echo 
else
    echo "Du bist noch nicht im texte-Ordner sondern hier..."
    pwd
    echo 
    echo "Probiere es nochmal mit "
    echo "cd texte"
    exit 1
fi
