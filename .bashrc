# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

mkdir -p "$HOME/.local/bin"
ln -s "$HOME/lernbash/lvl01.sh" "$HOME/.local/bin/lvl01"
ln -s "$HOME/lernbash/lvl02.sh" "$HOME/.local/bin/lvl2"
PATH="$HOME/.local/bin:$PATH"

alias lbu='cd ~/lernbash && git pull; cd ~'

if [ -f ~/.lb/features/auto-update ]; then
    echo 'Lernbash AUTO_UPDATE = ON'
    if [ -d ~/lernbash ]; then
        lbu
    fi
fi
if [ -f ~/.lb/features/reset-fertig-on-login ]; then
    echo 'Lernbash reset .lb/fertig beim login'
    if [ -d ~/.lb/fertig ]; then
        rm ~/.lb/fertig/*
    fi
fi


alias lernbash='~/lernbash/hilfe.sh'
alias fertig='~/lernbash/fertig.sh'
#alias lvl1='~/lernbash/lvl01.sh'
#alias lvl2='~/lernbash/lvl02.sh'
alias lvl3='~/lernbash/lvl03.sh'

# Startbildschirm anzeigen
~/lernbash/intro.sh
