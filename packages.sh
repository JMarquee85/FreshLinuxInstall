# A script to install all the packages I normally need to install for a fresh Linux installation. 

# Update/ Upgrade 
sudo apt-get -y update;sudo apt-get -y upgrade

# APT stuff. 
sudo apt-get -y install \
python3 \
python3-pip \
caffeine \
copyq \
openssh-server \
whois \
htop \ 
gparted \

# Snaps. 
sudo snap -y install \
sublime-text --classic

# espanso
wget https://github.com/federico-terzi/espanso/releases/download/v2.1.8/espanso-debian-x11-amd64.deb
sudo apt -y install ./espanso-debian-x11-amd64.deb 
espanso service register
espanso start

# thefuck
sudo apt install python3-dev python3-setuptools
pip3 install thefuck --user

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# bpytop
sudo python3-pip install bpytop

# append typical shortcuts to bashrc
echo -e "# My aliases\nalias get'sudo apt-get -y install'\nalias upd='sudo apt-get -y update;sudo apt-get -y upgrade'\nalias p='python3'" >> ~/.bashrc
