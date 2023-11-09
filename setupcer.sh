if [ -z "$1" ]; then
    echo "输入主机域名 param 1"
    exit 1
fi
if [ -z "$2" ]; then
    echo "输入证书文件夹 param 2"
    exit 1
fi
if [ ! -f ~/.acme.sh/acme.sh ]; then
    sudo curl  https://get.acme.sh | sh
fi

if [ -f $2/v2ray.crt ]; then
    ~/.acme.sh/acme.sh --renew -d $1 --force --ecc
else
    ~/.acme.sh/acme.sh --register-account -m yinhaogerault@gmail.com --force
    ~/.acme.sh/acme.sh --issue -d $1 --standalone -k ec-256 --force
    folder_name="$2"
    if [ -d "${folder_name}" ]; then
        echo "文件夹已存在"
    else
        mkdir "$folder_name"
        echo "文件夹已创建"
    fi
    ~/.acme.sh/acme.sh --installcert -d $1 --fullchainpath $2/v2ray.crt --keypath $2/v2ray.key --ecc --force
fi



