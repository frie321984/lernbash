#!/bin/bash


read -r -p 'Passwort? ' password
if [ "$password" != "36" ]; then
cat << EOF
Das Passwort stimmt leider nicht.

Versuch nochmal die Datei mit dem langen Dateinamen zu lesen.

Tippe
cat a
ein. Drücke dann die Tabulatortaste über der Feststalltaste und bestätige mit Enter.

EOF

exit 1
else
	cat << EOF
Super!
Nutze weiter fleissig die TAB Taste um schnell Dateien oder Ordner einzutippen.
EOF

rm ach-du-schande--so-ein-langer-dateiname &2>/dev/null
fi
