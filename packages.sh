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
terminator \
python3-dev \
python3-setuptools \
dnsutils \
zoom \
bluetoothd \
tcpdump \
tshark

# Snaps. 
# sudo snap -y install \
# sublime-text --classic \
# bitwarden \


# espanso
wget https://github.com/federico-terzi/espanso/releases/download/v2.1.8/espanso-debian-x11-amd64.deb
sudo apt -y install ./espanso-debian-x11-amd64.deb 
espanso service register
espanso start

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# pip packages
sudo python3-pip install \
bpytop \
thefuck --user \
virtualenv --user \


# append typical shortcuts to bashrc
echo -e "# My aliases\nalias get'sudo apt-get -y install'\nalias upd='sudo apt-get -y update;sudo apt-get -y upgrade'\nalias p='python3'" >> ~/.bashrc

# update and upgrade at the end
sudo apt-get -y update; sudo apt-get -y upgrade
