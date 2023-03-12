mkdir .ssh && chmod 700 .ssh
ssh-keygen -q -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | ssh git@cloudia.fritz.box 'cat >> .ssh/authorized_keys'
git clone git@cloudia.fritz.box:/home/git/lernbash.git .lernbash