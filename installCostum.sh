#! bin/bash 

sudo apt-get install iptables -y &&
sudo apt-get install wget -y &&
sudo mkdir /home/l/Security/Iptables &&
cd /home/l/Security/Iptables &&
sudo wget https://paulorochacode.github.io/Costumization/iptablesRules &&
sudo iptables-restore < iptablesRules &&
sudo apt-get install iptables-persistent -y &&
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt-get update -y &&
sudo apt-get upgrade -y
sudo apt update -y &&
sudo apt-get install clamav clamav-daemon -y &&
sudo apt remove pipewire* --purge &&
sudo apt remove alsa* --purge &&
sudo apt install pulseaudio &&
sudo apt install wget &&
sudo apt install i3 &&
sudo apt install i3blocks -y &&
sudo apt install xorg -y &&
sudo apt install gnome-terminal -y &&
sudo rm -rf /home/l/.config/i3/config &&
cd /home/l/.config/i3/ &&
sudo wget https://paulorochacode.github.io/Costumization/config &&
sudo rm -rf /etc/i3blocks.conf &&
cd /etc/ &&
sudo wget https://paulorochacode.github.io/Costumization/i3blocks.conf &&
sudo apt install build-essential &&
sudo apt install libpam0g-dev &&
sudo apt install libxcb-xkb-dev &&
sudo apt install git &&
sudo git clone --recurse-submodules https://github.com/nullgemm/ly &&
cd ly &&
sudo make &&
sudo make install &&
sudo systemctl enable ly.service -f &&
sudo systemctl disable getty@tty2.service -f &&
sudo reboot 

