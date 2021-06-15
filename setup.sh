sudo apt install git-all
sudo apt install unzip
sudo apt update
sudo apt install curl
sudo curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
sudo bash install-release.sh
sudo mkdir /etc/v2ray
git clone https://github.com/yinhaofrancis/vtoray.git
cd vtoray
sudo rm -f /usr/local/etc/v2ray/config.json
sudo cp myconfig.json /usr/local/etc/v2ray/config.json
date -R
