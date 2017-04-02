#!/bin/bash
#installScript

#update all
sudo apt-get update -y; sudo apt-get upgrade -y

wget https://github.com/kekev76/installScript/blob/master/install-git.sh -O /tmp/install-git.sh

chmod +x /tmp/install-git.sh

sh /tmp/install-git.sh
