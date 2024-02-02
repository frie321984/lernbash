# Lernbash

```
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  
██░████░▄▄█░▄▄▀█░▄▄▀█░▄▄▀█░▄▄▀█░▄▄█░████  
██░████░▄▄█░▀▀▄█░██░█░▄▄▀█░▀▀░█▄▄▀█░▄▄░█  
██░▀▀░█▄▄▄█▄█▄▄█▄██▄█▄▄▄▄█▄██▄█▄▄▄█▄██▄█  
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
```

Lernbash ist ein Spiel mit dem man in einem leeren Userverzeichnis Kindern die Bash näher bringen kann.

Es ist ein interaktives Programm, dass mit Bordmitteln des Linux-Systems funktioniert (bash).

Für die Einrichtung benötigt die Lehrerin idealerweise selber Linux-Kenntnisse, z.B. wie man 
podman installiert und laufen lässt.

Installation
------------

Am einfachsten startest du das Programm mit podman:

```shell
podman run -it docker.io/frie321984/lernbash
```

Dann kann das Kind / die Schülerin auch schon loslegen. Zum Beenden verwende exit. dann wird  lernbash wieder beendet.

Ziel von Lernbash
------------
Kinder können selber Dateien anlegen, bearbeiten (mit nano) und navigieren auf einer bash Kommandozeile.

Zielgruppe
------------
Kinder die Lesen und Schreiben können und mit einer Computertastatur vertraut sind.
Eltern oder Lehrerinnen, die sich mit Linux etwas auskennen und Kindern dieses Betriebssystem näher bringen wollen.

für Entwicklerinnen
-------------

Um lernbash weiter zu entwickeln kann eine lokale installation sinnvoll sein - ohne container. Ursprünglich habe ich lernbash komplett ohne container entwickelt. dafür gibt es die SETUP.md Datei. 

foo oder hera ist immer der Account mit dem die Schülerin gemeint ist.

Wenn du als user foo lernbash aktualisieren möchtest, kannst du das mit `lbu` tun.

Im Ordner `.lb/features/` kannst du verschiedene Entwickleroptionen einschalten.

Welche das sind, findest du in `.bashrc`.

Hier ist ein schönes Tutorial mit den wichtigsten ersten Befehlen das ich als Grundlage verwende:
https://ryanstutorials.net/linuxtutorial/navigation.php#introduction

Schriftgenerator fürs Banner und so:
https://texteditor.com/multiline-text-art/
