#!/bin/bash

if [ ! -f ./geschichte ]; then

cat << EOF
Es scheint als hättest du noch keine Geschichte geschrieben."

Probiere es mal mit:

echo "Hallo" >> geschichte
EOF
exit 1

else

cat << EOF
Du hast soeben eine Datei angelegt mit dem Dateinamen "geschichte".

Ich lese sie gleich mal durch.
EOF

cat ./geschichte

fi