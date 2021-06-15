sudo apt install git-all
sudo apt install unzip
sudo apt install curl
sudo curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
sudo bash install-release.sh
bash config.sh
sudo rm -f /usr/local/etc/v2ray/config.json
sudo cp currentConfig.json /usr/local/etc/v2ray/config.json
date -R
