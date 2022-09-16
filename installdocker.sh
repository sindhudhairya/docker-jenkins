#!/bin/bash
#become root
sudo su
#installing docker
apt update
apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
apt install docker-ce -y
systemctl status docker
#pulling image down
docker pull jenkins/jenkins:lts
#run container
docker run -d -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts