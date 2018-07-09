# /bin/bash

apt-get update && apt-get -y upgrade

# Terminator
add-apt-repository ppa:gnome-terminator/nightly-gtk3
apt-get update
apt-get install terminator

# Git
apt-get install git-core
git --version
git config --global user.name "wendleypf"
git config --global user.email "wendley.franca@ccc.ufcg.edu.br"

# java
apt-get purge openjdk*
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer
apt-get install oracle-java8-set-default

# maven
apt-get install maven
mvn -version

# pip
apt-get update && apt-get -y upgrade
apt-get install python-pip
pip -V

# Nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs
#apt-get install nodejs
node -v
npm -v

# Angular CLI
npm install -g @angular/cli
# Bower
npm install -g bower

# Postman
wget -q https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz
sudo mv Postman /opt/Postman
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org
touch /etc/systemd/system/mongodb.service
cat mongo.dat > /etc/systemd/system/mongodb.service

service start mongodb
service status mongodb

# Robomongo
wget https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz && mv robo3t-1.2.1-linux-x86_64-3e50a65 robomongo
rm robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
mv robomongo/ /opt/robomongo
ln -s /opt/robomongo/bin/robo3t /usr/bin/robomongo
# mover para link ainda

# MySQL
# Server e Client
apt-get intall mysql-server mysql-client
# Workbench
wget http://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-6.3.9-1ubuntu16.10-amd64.deb -O mysql-workbench-community.deb
dpkg -i mysql-workbench-community.deb
apt-get -f install

# Umake
add-apt-repository ppa:ubuntu-desktop/ubuntu-make
apt-get update
apt-get install ubuntu-make

# Webstorm
umake ide webstorm
# Pycharm
umake ide pycharm
# Idea
umake ide idea-ultimate

# STS
wget http://download.springsource.com/release/STS/3.9.5.RELEASE/dist/e4.8/spring-tool-suite-3.9.5.RELEASE-e4.8.0-linux-gtk-x86_64.tar.gz
tar -xzf spring-tool-suite-3.9.5.RELEASE-e4.8.0-linux-gtk-x86_64.tar.gz
rm spring-tool-suite-3.9.5.RELEASE-e4.8.0-linux-gtk-x86_64.tar.gz
mv sts-bundle/ ~/
mv sts.desktop ~/.local/share/applications
mv ~/.local/share/applications/sts.desktop /usr/share/applications/

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update && apt-get install google-chrome-stable -y

#Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.1.1-amd64.deb
dpkg -i slack-desktop-3.1.1-amd64.deb
rm slack-desktop-3.1.1-amd64.deb

# Skype
 apt install apt-transport-https -y
 wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
 echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
 apt-get update
 apt-get install skypeforlinux

# Cerebro App
wget https://github.com/KELiON/cerebro/releases/download/v0.3.1/cerebro-0.3.1-x86_64.AppImage
chmod a+x cerebro-0.3.1-x86_64.AppImage
./cerebro-0.3.1-x86_64.AppImage
rm cerebro-0.3.1-x86_64.AppImage

# Plugins do Cerebro App
npm i cerebro-github
npm i cerebro-devdocs
npm i cerebro-npm
npm i cerebro-stackoverflow
npm i convert-color
npm i cerebro-shell
# cerebro-cheats
# cerebro-text-case
# cerebro-translate
# cerebro-localhost
# cerebro-plugin-gitlab

# Franz
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz-5.0.0-beta.18-x86_64.AppImage
chmod a+x franz-5.0.0-beta.18-x86_64.AppImage
./franz-5.0.0-beta.18-x86_64.AppImage
rm franz-5.0.0-beta.18-x86_64.AppImage


