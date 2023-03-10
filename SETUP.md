# SETUP

> sudo useradd lernbash

Passwort eingeben usw.


> su - lernbash
> lernbash:~$ mkdir .ssh && chmod 700 .ssh
> lernbash:~$ ssh-keygen
> lernbash:~$
cat ~/.ssh/id_rsa.pub | ssh git@raspi.fritz.box 'cat >> .ssh/authorized_keys'

> lernbash:~$ git clone git@raspi.fritz.box:/home/git/lernbash.git . 
> lernbash:~$ 

