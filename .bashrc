# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

if [ -f ~/.lernbash-features/auto_update ]; then
    echo 'Lernbash AUTO_UPDATE = ON'
    if [ -d ~/lernbash ]; then
        cd ~/lernbash && git pull
        cd ~
    fi
fi

alias lvl1='~/lernbash/lvl01.sh'

lvl1
