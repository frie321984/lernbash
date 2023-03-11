#!/bin/bash

if [ ! -d ~/texte ]; then
    echo "Du hast noch nicht den Ordner texte angelegt."
    echo "Probiere es mal mit:"
    echo
    echo "mkdir texte"
    exit 1
fi
