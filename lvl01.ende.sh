cat << EOF
------------------
 Lernbash Level 1
------------------
EOF


cat << EOF 
Okay, du bist fertig mit ausprobieren.
Kannst du mir sagen was der Befehl pwd tut?

A: eins
B: zwei
EOF

read -r pwd

cat << EOF
$pwd
Das ist vorerst das Ende von Lernbash. 
Danke für's mitmachen. :)

EOF