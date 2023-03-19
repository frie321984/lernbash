#!/bin/bash


read -r -p 'Passwort? ' password
if [ "$password" != "5" ]; then
cat << EOF
Das Passwort stimmt leider nicht.

Sieh dich nochmal im Obstgarten um mit
dem Befehl 

tree

EOF
exit 1

else
	cat << EOF
Großartig!

Du kannst tree immer verwenden um eine 
Karte mit allen Dateien und Unterordnern
zu sehen.
EOF

rm -rf ./obstgarten &2>/dev/null
fi
