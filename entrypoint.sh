#!/bin/bash

###############################################################
# Install Docker
###############################################################

# uninstall all conflicting packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


###############################################################
# Build Containers
###############################################################

git clone https://github.com/hepheir/oj-backend
cd oj-backend
docker build -t hepheir/oj-backend .

cd ..

git clone https://github.com/hepheir/oj-judge
cd oj-judge
git submodule init
git submodule update
docker build -t hepheir/oj-judge .

cd ..

###############################################################
# Run server
###############################################################

docker compose up -d
