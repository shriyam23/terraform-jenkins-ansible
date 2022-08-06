#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update && sudo apt upgrade -y
sudo apt install default-jre -y
sudo apt install openjdk-11-jdk -y
sudo apt install maven -y
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo apt install unzip
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install ansible -y

