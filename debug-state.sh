#!/bin/bash

cat << EOF
LERNBASH DEBUG INFORMATIONEN

EOF

echo "Installationsort: [$lernbashpath]"

echo "Ort für Spielinformationen: [~/.lb]"

echo 'Inspiziere ~/.lb/'
ls -alh ~/.lb/

echo
echo "gerade aktives Level: "
if [ -f ~/.lb/current-level ]; then
    cat ~/.lb/current-level
fi

echo
echo "Geschaffte Level: "
if [ -d ~/.lb/fertig ]; then
    ls ~/.lb/fertig
fi
