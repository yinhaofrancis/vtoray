if [ -z "$1" ]; then
    echo "输入主机域名"
    exit 1
fi


sudo bash install_v2ray.sh

sudo bash setupcer.sh $1 ~/tls
sudo bash config.sh ~/tls
sudo rm -f /usr/local/etc/v2ray/config.json
sudo cp currentConfig.json /usr/local/etc/v2ray/config.json
date -R
sudo bash run.sh
