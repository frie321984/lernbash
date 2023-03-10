# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

if [ -d ~/lernbash ]; then
    cd lernbash && git pull
    cd ~
fi

alias c='echo "c geändert"'

cat << EOF
Hallo bei Lernbash
------------------

Ich bring dir programmieren bei. Hast du Lust?
Als erstes schauen wir mal welche Dateien es
hier so gibt.

Tippe dafür diesen Befehl ein:
ls

EOF