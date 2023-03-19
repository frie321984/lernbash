#!/bin/bash

if [ ! -f .dev ]; then
	exit 1
fi

rm -rf ./raum
cp -r "$lernbashpath/level/7/dungeon/raum/" ./raum
cp -r "$lernbashpath/level/7/dungeon/zettel" .

cat zettel
