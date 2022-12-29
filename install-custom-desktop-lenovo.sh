#! /bin/bash

echo "Which user would you like to install in?"
read User

UFWsimple(){
    echo "__________________________________________________________"
    echo "installing UFW simple..."
    sudo apt install ufw -y &&
    sudo ufw default DENY incoming &&
    sudo ufw default DENY outgoing &&
    sudo ufw allow out 53 &&
    sudo ufw allow out 80 &&
    sudo ufw allow out 443 &&
    sudo ufw enable &&
    sudo ufw reload
}

IptablesSimple(){
    echo "__________________________________________________________"
    echo "installing Iptables simple..."
    sudo apt-get install iptables -y &&
    sudo apt-get install wget -y &&
    mkdir /home/"$User"/Security &&
    mkdir /home/"$User"/Security/Iptables &&
    sudo cd /home/"$User"/Security/Iptables &&
    sudo wget https://paulorochacode.github.io/Costumization/iptables-desktop-lenovo &&
    sudo iptables-restore < iptables-desktop-lenovo &&
    sudo apt-get install iptables-persistent -y
}

Clamav(){
    echo "__________________________________________________________"
    echo "installing Antivirus Clam AV..."
    sudo apt-get install clamav clamav-daemon -y 
}

Updates(){
    echo "__________________________________________________________"
    echo "installing System updates..."
    sudo apt update -y &&
    sudo apt upgrade -y &&
    sudo apt-get update -y &&
    sudo apt-get upgrade -y &&
    sudo apt update -y
}

Audio(){
    echo "__________________________________________________________"
    echo "installing Audio..."
    sudo apt remove pipewire* --purge -y &&
    sudo apt remove alsa* --purge -y &&
    sudo apt install pulseaudio -y
}

Video(){
    echo "__________________________________________________________"
    echo "installing Video..."
    sudo apt install i3 -y &&
    sudo apt install i3blocks -y &&
    sudo apt install xorg -y &&
    sudo apt install feh -y &&
    sudo apt install unzip -y &&
    sudo apt-get install libavcodec-extra libav-tools -y &&
    sudo apt install ubuntu-restricted-extras -y &&
    sudo rm -rf /home/"$User"/.config/i3/config &&
    cd /home/"$User"/.config/i3/ &&
    sudo apt-get install unzip -y &&
    sudo rm -rf ./i3blocks &&
    sudo wget https://paulorochacode.github.io/Costumization/i3blocks.zip &&
    unzip i3blocks.zip &&
    sudo rm -rf i3blocks.zip &&
    sudo wget https://paulorochacode.github.io/Costumization/config &&
    sudo rm -rf /etc/i3blocks.conf &&
    cd /etc/ &&
    sudo wget https://paulorochacode.github.io/Costumization/i3blocks.conf &&
    cd /usr/share/pixmaps &&
    sudo wget https://paulorochacode.github.io/Costumization/wallpapers/fsociety.jpg &&
    sudo wget https://paulorochacode.github.io/Costumization/wallpapers/black-wallpaper.jpg &&
    sudo feh  --bg-scale /usr/share/pixmaps/black-wallpaper.jpg
}

Utilities(){
    echo "__________________________________________________________"
    echo "installing Utilities..."
    sudo apt install unzip -y &&
    sudo apt install net-tools -y &&
    sudo apt install feh -y &&
    sudo apt install xfce4-terminal -y &&
    sudo apt install maim -y &&
    sudo apt install slop -y &&
    sudo apt install firefox -y &&
    sudo apt install keepassxc -y &&
    sudo apt install nautilus -y &&
    sudo apt install gnome-disk-utility -y &&
    sudo apt install snapd -y &&
    sudo apt snap install code --classic &&

    #mute the mic/cam
    sudo sh -c "echo 'list uvcvideo' >> /etc/modprobe.d/blacklist.conf"
}

LoginManager(){
    echo "__________________________________________________________"
    echo "installing LoginManager..."
    
    sudo apt install gdm3 -y
    #sudo apt install build-essential -y &&
    #sudo apt install libpam0g-dev -y &&
    #sudo apt install libxcb-xkb-dev -y &&
    #sudo apt install git -y &&
    #sudo git clone --recurse-submodules https://github.com/nullgemm/ly &&
    #cd ly &&
    #sudo make &&
    #sudo make install &&
    #sudo systemctl enable ly.service -f &&
    #sudo systemctl disable getty@tty2.service -f
}

#### SEC

UFWsimple
#IptablesSimple
Clamav


#### User

Audio
Video
Utilities


#### SO

Updates
LoginManager

#sudo reboot
