#!/bin/bash
clear
rm -f ~/.fertig
touch ~/.lb/fertig/lvl02

read -p "Hast du verstanden was ls macht? Antworte mit (Ja|Nein): " verstanden

if [ $verstanden == "J" ]; then
echo "Super! 🎉"
else
echo "Okay. Das ist nicht schlimm."
fi

cat << EOF
Das ist vorerst das Ende von Lernbash. 
Danke für's mitmachen. :)
EOF