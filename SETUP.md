# SETUP

WICHTIG: Dieses Programm verändert die `.bashrc` Datei. 
Es ist nur dafür gedacht in einem Übungsaccount verwendet
zu werden. **Installiere es nicht in deinem Hauptaccount!** ;)


```
> lehrerin@rechner:~$ sudo adduser foo
```

Passwort eingeben usw.

```
> lehrerin@rechner:~$ su - foo
```


jetzt als foo user ausführen:

```
git clone https://gitlab.com/frie321984/lernbash.git .lernbash
```

dann ist das repo geclont in ~/.lernbash

Jetzt kann die installation losgehen:

```
> foo@rechner:~$ ~/.lernbash/install.sh
```

Ausloggen
```
> foo@rechner:~$ exit
```

Nach dem Neu Einloggen sollte nun die Hallowelt nachricht von lernbash da sein:

```
> lehrerin@rechner:~$ su - foo
> Passwort:
> Hallo bei Lernbash
> foo@rechner:~$ _
```
