#!/bin/bash

sudo apt-get -y install apt-transport-https ca-certificates curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu "$(lsb_release -cs)" stable"

sudo apt-get update

sudo apt-get -y install docker-ce

echo
echo
echo "============================"
echo "Install docker completed"
echo "Test the install :"
echo "sudo docker run hello-world"
echo "============================"