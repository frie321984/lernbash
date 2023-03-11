# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

mkdir -p "$HOME/.local/bin"
ln -s "$HOME/lernbash/lvl01.sh" "$HOME/.local/bin/lvl1"
ln -s "$HOME/lernbash/lvl02.sh" "$HOME/.local/bin/lvl2"
ln -s "$HOME/lernbash/lvl03.sh" "$HOME/.local/bin/lvl3"
ln -s "$HOME/lernbash/fertig.sh" "$HOME/.local/bin/fertig"
ln -s "$HOME/lernbash/hilfe.sh" "$HOME/.local/bin/hilfe"

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


# geht noch nicht... 
# find $HOME/lernbash/level/* -type d -exec basename {} \;
for dir in $HOME/lernbash/level/*/; do
    echo "$dir"
    level=$(basename "$dir")
    echo $level
done

# Startbildschirm anzeigen
~/lernbash/intro.sh
