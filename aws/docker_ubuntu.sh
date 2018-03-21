#!/bin/bash
sudo apt update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common\
    -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo apt-get install docker-compose -y
sudo groupadd docker
sudo usermod -aG docker $USER
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install
sudo apt-get clean
sudo reboot