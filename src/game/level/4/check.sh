#!/bin/bash

# 1 ist die PID vom Prozess von Hera - das ist hardcoded und blöd
bashpid=$(cat "$HOME/.lb/bashpid")
if [ "$(pwdx $bashpid)" = "$bashpid: $HOME/Texte" ]; then
   exit 0
fi
exit 1

