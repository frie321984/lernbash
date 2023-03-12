#!/bin/bash

if [ ! -f ./geschichte ]; then
    cat << EOF
Es scheint als hättest du noch keine Geschichte geschrieben."

Probiere es mal mit:

echo "Hallo" >> geschichte
EOF
    exit 1
fi