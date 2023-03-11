#!/bin/bash
clear

cat << EOF
 █   ██▀ █ █ ██▀ █     ▀██
 █▄▄ █▄▄ ▀▄▀ █▄▄ █▄▄   ▄▄█

Bis jetzt gab es ja noch nicht viel zu
sehen in unserem Ordner. Zeit das zu ändern.

Jetzt legen wir einen neuen Ordner an!

Der Befehl heißt:

mkdir NAME

Statt NAME kannst du dir einen eigenen Namen
überlegen. Probiere es mal aus und leg einen
eigenen Ordner an.

Denk daran: Mit ls kannst du nachschauen
ob dein Ordner da ist. ;)

Wenn du soweit bist, beende das Level 
wieder mit dem Befehl
fertig

EOF

cat >> ~/.fertig << EOF
#!/bin/bash
clear

rm -f ~/.fertig
touch ~/.lb/fertig/lvl03

ls

cat << EC

Du hast Level 3 geschafft.

Das ist vorerst das Ende von Lernbash.
Ich hoffe es hat dir Spaß gemacht.
Vielen Dank für's Mitmachen. :)
EC
EOF