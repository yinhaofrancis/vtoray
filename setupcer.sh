if [ -z "$1" ]; then
    echo "输入主机域名 param 1"
    exit 1
fi
if [ -z "$2" ]; then
    echo "输入证书文件夹 param 2"
    exit 1
fi
curl  https://get.acme.sh | sh
sudo apt-get -y install netcat
folder_name="$2"
if [ -d "${folder_name}" ]; then
    echo "文件夹已存在"
else
    mkdir "$folder_name"
    echo "文件夹已创建"
fi

sudo ~/.acme.sh/acme.sh --installcert -d $1 --fullchainpath $2/v2ray.crt --keypath $2/v2ray.key --ecc