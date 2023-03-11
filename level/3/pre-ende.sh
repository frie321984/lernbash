#!/bin/bash

if [ -d ~/texte ]; then
    # aufgabe erfolgreich geschafft!
    echo "Geschafft!"
    exit 0
else
    echo "Du hast noch nicht den Ordner texte angelegt."
    echo "Probiere es mal mit:"
    echo
    echo "mkdir texte"
    exit 1
fi
