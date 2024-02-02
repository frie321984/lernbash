#!/bin/bash

if [ ! -d ~/Texte ]; then
    echo "Du hast noch nicht den Ordner Texte angelegt."
    echo "Probiere es mal mit:"
    echo
    echo "mkdir Texte"
    echo 
    echo "Achte dabei auf die Groß- und Kleinschreibung."
    exit 1
fi
