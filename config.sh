UUID1=$(cat /proc/sys/kernel/random/uuid)
if [ -z "$1" ]; then
    echo "输入证书文件夹 param 1"
    exit 1
fi
function transform {
    string="$1"
    local result="${string//\//\\/}"
    echo $result
}
prefix=$(transform $1)
echo $prefix
KEY="$prefix\/v2ray.key"
CRT="$prefix\/v2ray.crt"
file=$(sed -e s/{{uuid1}}/${UUID1}/g -e s/{{key}}/${KEY}/g -e s/{{crt}}/${CRT}/g myconfig.json)
echo ${file}>currentConfig.json
echo $file
