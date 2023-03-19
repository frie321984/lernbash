#!/bin/bash


read -r -p 'Passwort? ' password
if [ "$password" != "83" ]; then
cat << EOF
Das Passwort stimmt leider nicht.

Versuch nochmal die Datei mit dem vielen Text zu lesen.

Verwende dafür diesen Befehl:
less sovieltext

EOF
else
	cat << EOF
Großartig!

Immer wenn du eine Datei findest, die mit cat nicht
auf den Bildschirm passt, kannst du less benutzen,
damit du mit den Pfeiltasten scrollen kannst.
EOF

rm sovieltext &2>/dev/null
fi
