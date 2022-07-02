#!/bin/bash

## Dibuat oleh: maburtobi
## Pembaharuan: 2022-07-02
## Referensi 1: https://github.com/home-assistant/supervised-installer
## Referensi 2: https://community.home-assistant.io/t/installing-home-assistant-supervised-on-debian-11/200253


#Add apt sources from default to main, contrib, non-free
cd /etc/apt
sudo sed -i 's/\bbullseye main\b/bullseye main contrib non-free/g' sources.list
sudo sed -i 's/\bbullseye-security main\b/bullseye-security main contrib non-free/g' sources.list
sudo sed -i 's/\bbullseye-updates main\b/bullseye-updates main contrib non-free/g' sources.list

#Update the system
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

#Install required packages
sudo apt install jq wget curl apparmor-utils udisks2 libglib2.0-bin network-manager dbus unzip -y
#(optional) sudo apt-get install avahi-daemon

#Disable 'networking' as it causing trouble in IP assignment during operation. Use 'NetworkManager' instead.
#The system's ip address may change.
#Note that these steps is optional.
cd /etc/network
sudo sed -i 's/\ballow-hotplug\b/#allow-hotplug/' interfaces
sudo sed -i 's/\biface\b/#iface/' interfaces
sudo systemctl restart networking & sudo systemctl restart NetworkManager
cd

#Install latest Docker-CE
curl -fsSL get.docker.com | sudo sh

#Install the OS-Agent
#Check the latest release at https://github.com/home-assistant/os-agent/releases, then download the file.
#In this example, we use Debian 11 with amd64 architecture.
sudo wget https://github.com/home-assistant/os-agent/releases/download/1.2.2/os-agent_1.2.2_linux_x86_64.deb
sudo dpkg -i os-agent_1.2.2_linux_x86_64.deb

#Install HASS
sudo wget https://github.com/home-assistant/supervised-installer/releases/latest/download/homeassistant-supervised.deb
sudo dpkg -i homeassistant-supervised.deb

#Then, reboot the system.
sudo reboot


## After reboot, Home Assistant needs several minutes to do initial configuration and downloading some data automatically. So we just need to '''wait around 30 minutes''' depends on the internet bandwidth and system specifications.

## We can refresh the web page periodically to check if the automaic initial configuration has done.
## Just type the Home Assistant's IP address with port 8123 in browser and press ENTER.
## Here are the example: <ip-address>:<port>  -->  192.168.1.2:8123
