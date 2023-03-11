# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

mkdir -p "$HOME/.local/bin"
ln -s "$HOME/lernbash/level.ende.sh" "$HOME/.local/bin/fertig"
ln -s "$HOME/lernbash/debug-state.sh" "$HOME/.local/bin/lb-dbgstate"
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


# erstelle die startdatei für jedes level basierend auf den ordnern in level
for dir in $HOME/lernbash/level/[0-9]*/; do
    level=$(basename "$dir")
    cat > "$HOME/.local/bin/lvl$level" << EOF
#!/bin/bash
. ~/lernbash/level.start.sh $level
EOF
chmod u+x "$HOME/.local/bin/lvl$level"
done

# Startbildschirm anzeigen
~/lernbash/intro.sh
