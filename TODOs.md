ToDos
--------------

x Nach dem Login einen Startbildschirm zeigen, der erklärt wie's losgeht.
x Level mit "fertig" beenden
x Level können durch anlegen eines unterordners in level/[0-9]+ erstellt werden
- Anleitung für entwicklerinnen was ein level mindestens braucht
x lb-dbgstate liest aktuellen status des spiels aus
x es kann checks nach dem level geben die prüfen ob die schülerin das problem gelöst hat (Bsp. lvl 4)
- bevor ein level starten kann, überprüfen ob vorherige level erfolgreich waren
- Überall schicke ascii art bilder einfügen
- mehr emojis!!
- level festlegen: was soll man wo lernen?
- pro level eine anleitung schreiben
- interaktiv gestalten: Kinder am Anfang den Namen eintippen lassen und später verwenden?
x Hardcodierte Pfade zu lernbash aus den Scripts entfernen...
- Feature Flag in der Hilfe und im Intro mit ausgeben, damit 
  Entwicklerinnen wissen was sie gerade eingestellt haben ^^
x Lernbash kann jetzt in einem beliebigen verzeichnis installiert werden.
x install script und .bashrc sind jetzt resilienter ☺️
x Lernbash als Podman Container bereitstellen um Installation zu vereinfachen
x README überarbeiten 
- SETUP überarbeiten - das ist jetzt nur noch zum entwickeln relevant :)
- OpenDyslexicMono verlinken
x Anleitung wie man es verwenden kann
X Fortschritte außerhalb vom container speichern lassen, damit man nicht 
  jedes mal von vorne anfangen muss wenn der container neu gestartet wird
- Reload von features usw. während der Laufzeit / zwischen Leveln 
  ermöglichen - damit man im pod on the fly ein und ausschalten kann
- https://www.eddymens.com/blog/creating-a-browser-based-interactive-terminal-using-xtermjs-and-nodejs

Offene Punkte
--------------

Wie sichert man bequem die Daten, die das Kind anlegt?

Welche Dinge müssen installiert sein auf dem Rechner damit das alles läuft? git

Docker Push
--------------
podman login -u  docker.io/frie321984/lernbash
podman push UUID docker://docker.io/frie321984/lernbash:latest

