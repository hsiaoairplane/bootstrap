#!/bin/sh
sudo apt update
sudo apt install -y vim openssh-server git-core unattended-upgrades

echo "APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";" | sudo tee /etc/apt/apt.conf.d/10periodic

sudo sed -i.bak s/prohibit-password/no/g /etc/ssh/sshd_config
sudo service ssh restart
