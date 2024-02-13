# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.lernbashpath ]; then
    export lernbashpath=$(<$HOME/.lernbashpath)
else
    # default ordner
    export lernbashpath="$HOME/lernbash/"
fi

if [ "$lernbashpath" == "" ]; then
    echo "Deine Installation von lernbash ist kaputt..."
    echo "Ich finde den Installationsort nicht."
    echo "Bitte deine Lehrerin um Rat."
else
if [ ! -d $lernbashpath ]; then
    echo "Deine Installation von lernbash ist kaputt..."
    echo "Ich finde den Installationsort nicht."
    echo "Bitte deine Lehrerin um Rat."
else

if [ -f $lernbashpath/.bashrc.default ]; then
     . $lernbashpath/.bashrc.default
fi

# installpfad ist da. kann losgehen
mkdir -p "$HOME/.local/bin"
ln -sf "$lernbashpath/level.ende.sh" "$HOME/.local/bin/fertig"
ln -sf "$lernbashpath/debug-state.sh" "$HOME/.local/bin/lb-dbgstate"
ln -sf "$lernbashpath/hilfe.sh" "$HOME/.local/bin/lernbash"
ln -sf "$lernbashpath/hilfe.sh" "$HOME/.local/bin/hilfe"

PATH="$HOME/.local/bin:$PATH"

alias lbu="cd $lernbashpath && git pull; cd ~; . ~/.bashrc"

if [ ! -d ~/.lb ]; then
    echo 'missing .lb dir'
    mkdir -p .lb/features
    mkdir -p .lb/fertig
fi

if [ -f ~/.lb/features/auto-update ]; then
    echo 'Lernbash AUTO_UPDATE = ON'
    if [ -d ~/lernbash ]; then
        lbu
    fi
fi

echo "tty" 
tty > .lb/tty

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

fi
fi
