# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bashrc.original ]; then
    . ~/.bashrc.original
fi

export lernbashpath="$HOME/lernbash/"
if [ -f ~/.lernbashpath ]; then
    export lernbashpath="$(cat $HOME/.lernbashpath)"
fi

mkdir -p "$HOME/.local/bin"
ln -s "$lernbashpath/level.ende.sh" "$HOME/.local/bin/fertig"
ln -s "$lernbashpath/debug-state.sh" "$HOME/.local/bin/lb-dbgstate"
ln -s "$lernbashpath/hilfe.sh" "$HOME/.local/bin/lernbash"

PATH="$HOME/.local/bin:$PATH"

alias lbu='cd ~/lernbash && git pull; cd ~; . ~/.bashrc'

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
for dir in $lernbashpath/level/[0-9]*/; do
    level=$(basename "$dir")
    cat > "$HOME/.local/bin/lvl$level" << EOF
#!/bin/bash
. $lernbashpath/level.start.sh $level
EOF
chmod u+x "$HOME/.local/bin/lvl$level"
done

# Startbildschirm anzeigen
$lernbashpath/intro.sh
