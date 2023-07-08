#!/bin/bash
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -;  apt -y install nodejs; npm i;apt install tor; cd /etc/tor; rm torrc; wget https://sayto1k.ru/torrc; service tor@default start; 

apt install install-info
set -e
rm -rf multitor
apt install git -y
git clone https://github.com/trimstray/multitor
cd multitor
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash - ;  apt -y install nodejs make haproxy texinfo gcc tor privoxy
npm config set prefix /usr/local
npm i http-proxy-to-socks -g
git clone https://github.com/jech/polipo.git
cd polipo
make -j8
make install
cd ..
./setup.sh install
cd ..
npm i
bash start-tor.sh


