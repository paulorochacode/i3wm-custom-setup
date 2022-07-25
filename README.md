<h1>Costumization<h1>  
  
<h3>iptables</h3>
<h4>
sudo apt-get install iptables -y && </br>
sudo iptables-restore < iptablesRules && </br>
sudo apt-get install iptables-persistent -y
</h4></br>

<h3>pulseaudio</h3>

<h4>
sudo apt remove pipewire* --purge && </br>
sudo apt remove alsa* --purge && </br>
sudo apt install pulseaudio && </br>
sudo reboot </br>
</h4>

<h3>i3wm</h3>

<h4>
sudo apt install i3 i3blocks xorg gnome-teminal -y && </br>
sudo rm -rf /home/l/.config/config && </br>
cd /home/l/.config </br>
!Dowload the config! </br>
sudo rm -rf /etc/i3blocks.conf && </br>
cd  /etc/ </br>
!Download the i3blocks.conf! </br>
WIN + SHIFT + R
</h4></br>

<h3>UFW</h3>

<h4>sudo apt install ufw -y &&</br>
sudo ufw default deny && </br>
sudo apt-get install ufw && </br>
sudo ufw default deny outgoing && </br>
sudo ufw default deny incoming && </br>
sudo ufw allow out 80 && </br>
sudo ufw allow out 443 && </br>
sudo ufw allow out 53</h4>

<h3>ly</h3>

<h4>
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev git && </br>
sudo git clone --recurse-submodules https://github.com/nullgemm/ly && </br>
cd ly && </br>
sudo make && </br>
sudo make install && </br>
sudo systemctl enable ly.service -f && </br>
sudo systemctl disable getty@tty2.service -f && </br>

<h3>grub text mode</h3>

sudo nano /etc/default/grub </br>
!Change : "GRUB_CMDLINE_LINUX_DEFAULT=""text"! </br>
sudo update-grub </br>
