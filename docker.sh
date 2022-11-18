#!/bin/bash

which docker|grep docker
if [ $? = 1 ]
then
#Instalacao Docker
sudo apt install docker.io -y

#Ativação Docker
sudo systemctl start docker
sudo systemctl enable docker
fi
docker pull mysql
sudo docker run -d -p 3300:3306 --name bancoRabbit -e "MYSQL_DATABASE=bolsa" -e "MYSQL_ROOT_PASSWORD=bolsa" mysql
cd /home/scripts/repositorioJavaAWS
sudo docker exec -it bancoRabbit bash
