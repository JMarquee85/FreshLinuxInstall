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

# docker
sudo apt -y install apt-transport-https ca-certificates curl gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo -y apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker ${USER}


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
