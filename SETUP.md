# SETUP

> sudo adduser lernbash

Passwort eingeben usw.


> su - lernbash
jetzt als lernbash:~$ 
> mkdir .ssh && chmod 700 .ssh
> ssh-keygen
> cat ~/.ssh/id_rsa.pub | ssh git@cloudia.fritz.box 'cat >> .ssh/authorized_keys'
> git clone git@cloudia.fritz.box:/home/git/lernbash.git

Jetzt hast du dieses repo in deinem testuser.

# Auto-Setup-Script-Inhalt

mv -i ~/.bashrc ~/.bashrc.original
ln -s ~/lernbash/.bashrc ~/.bashrc

## TODOs
- Setupscript für alles weitere...
- Symlink für .bashrc
