#!/bin/sh

echo "\nCreating Server Volume"
sudo docker volume create servervol
echo "\nServer Volume Created"

sudo docker network create --driver bridge mydriver1 --subnet=172.10.0.0/20
echo "\nUser Defined Network Created"

echo "\nBuilding Server Dockerfile"
sudo docker build -f ./Server/Dockerfile -t serverside1:v1 .
echo "\nServer Dockerfile built"

sudo docker run -it --name servercontainer -v servervol:/serverdata --network mydriver1 --ip=172.10.0.10 serverside1:v1
echo "\nServer Container stopped !!!"




