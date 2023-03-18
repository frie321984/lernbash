#!/bin/bash

read -r -p 'Passwort? ' password

if [ "$password" != "42" ]; then

cat << EOF
Du kommst nicht vorbei.

Das war leider das falsche Passwort.
Lies dir den Zettel nochmal genau durch mit

cat zettel

EOF
exit 1

else

cat << EOF
Richtig!

Damit hast du dieses Level geschafft! Gratuliere.

Weiter geht's mit lvl6
EOF

fi
