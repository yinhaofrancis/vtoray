UUID1=$(cat /proc/sys/kernel/random/uuid)
UUID2=$(cat /proc/sys/kernel/random/uuid)
file=$(sed -e s/{{uuid1}}/${UUID1}/g -e s/{{uuid2}}/${UUID2}/g myconfig.json)
echo ${file}>currentConfig.json
echo $file
