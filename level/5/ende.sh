#!/bin/bash

read -r passwort

if [[ $passwort	-ne 42 ]]; then

cat << EOF
EOF
exit 1

else

cat << EOF
Du hast soeben eine Datei angelegt mit dem Dateinamen "geschichte".

Ich lese sie gleich mal durch.

-----------
EOF

cat ./geschichte

echo "-----------"
echo 
echo "Toll!"
fi
