#!/bin/bash

echo "ATUALIZANDO O SERVIDOR....."

apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get install unzip -y

echo "SERVIDO ATUALIZADO!!!!!!!!!!!!!!"

echo "BAIXANDO E COPIANDO OS ARQUIVOS DA APLICAÇÃO......."

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /tmp/linux-site-dio-main
cp -R * /var/www/html

echo "ARQUIVOS DA APLICAÇÃO BAIXADOS E COPIADOS!!!!!!!!!!"
