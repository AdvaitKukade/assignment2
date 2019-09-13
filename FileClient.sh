#!/bin/sh

echo "\nCreating Client Volume"
sudo docker volume create clientvol 
echo "\nClient Volume Created"

echo "\nBuidling Client Dockerfile"
sudo docker build -f ./Client/Dockerfile -t clientside1:v1 .
echo "\nClient Dockerfile Built !!!"

sudo docker run -it --name clientcontainer -v clientvol:/clientdata --network mydriver1 --link servercontainer --ip=172.10.0.11 clientside1:v1
echo "\nClient Container stopped !!!"

