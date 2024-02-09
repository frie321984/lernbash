cat << EOF
Um in deinen neuen Ordner zu wechseln, verwende
den Befehl cd Texte
EOF

if [ ! -d /home/hera/Texte ]; then
    mkdir /home/hera/Texte
    cd /home/hera
fi

