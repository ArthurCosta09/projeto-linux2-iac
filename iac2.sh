#!/bin/bash

apt-get update 
apt-get upgrade -y

echo "Instalar o apache2 na máquina virtual"
apt-get install apache2 -y

echo "Instalar o unzip na máquina virtual"
apt-get install unzip -y

echo "Abrir diretório tmp e baixar o arquivo zip"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar o main.zip"
unzip main.zip
cd linux-site-dio-main

echo "Mover arquivos para a pasta padrão do apache"
cp -R * /var/www/html/
