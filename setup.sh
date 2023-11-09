if [ -z "$1" ]; then
    echo "输入主机域名"
    exit 1
fi
sudo apt install git-all
sudo apt install unzip
sudo apt install curl
# sudo curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
sudo curl -O https://raw.githubusercontent.com/yinhaofrancis/fhs-install-v2ray/master/install-release.sh
sudo bash install-release.sh
sudo bash setupcur.sh $1 /root/tls
bash config.sh /root/tls
sudo rm -f /usr/local/etc/v2ray/config.json
sudo cp currentConfig.json /usr/local/etc/v2ray/config.json
date -R
sudo run.sh
