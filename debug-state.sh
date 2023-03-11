#!/bin/bash

ls -alh ~/.lb/

echo "gerade aktives Level: "
if [ -f ~/.lb/current-level ]; then
    cat ~/.lb/current-level
fi

echo "Geschaffte Level: "
if [ -d ~/.lb/fertig ]; then
    ls -alh ~/.lb/fertig
fi
