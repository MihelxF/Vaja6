#!/usr/bin/bash
sudo mkdir Namizje
sudo mkdir Dokumenti
sudo mkdir Prenosi
sudo mkdir Slike 
sudo mkdir Video

for f in File1 File2 File3 File4 File5
do
mkdir file$f
done

for i in {1..5}
do
sudo useradd -m --groups sudo uporabniki$i
done

sudo apt install ufw
sudo apt install git-all
sudo apt install nginx
sudo apt install net-tools

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.kist.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli contairned.io docker-compose-plugin
