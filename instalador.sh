#!/bin/bash

#Criação diretórios
cd /home
mkdir scripts
cd scripts

#Instalação Java
which java|grep /java
if [ $? = 0 ]
then echo "OK"
else
sudo apt install openjdk-11-jdk -y
fi

#Instalação do docker e criação do container
bash docker.sh
