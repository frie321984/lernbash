#!/bin/bash
clear

read -p "Hast du verstanden was ls macht? Antworte mit J für Ja oder N für Nein: " verstanden

# case sensitiv
if [ $verstanden == "J" ]; then
rm -f ~/.fertig
touch ~/.lb/fertig/lvl02
echo "Super! 🎉"
else
echo "Okay. Das ist nicht schlimm."
fi

cat << EOF
Das ist vorerst das Ende von Lernbash. 
Danke für's mitmachen. :)
EOF