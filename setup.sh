sudo apt install git-all
sudo apt install unzip
sudo apt update
sudo apt install curl
sudo curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
sudo mkdir /etc/v2ray
git clone https://github.com/yinhaofrancis/vtoray.git
cd vtoray
sudo cp myconfig.json /etc/v2ray/config.json