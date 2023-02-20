#!/bin/bash

# 从192.168.1.1开始ping到192.168.1.100
network="172.17.161"
for ip_num in {1..100}
do
    ping -c 1 -w 1 $network.$ip_num 2>&1 > /dev/null
    if [ "$?" == "0" ]; then
        echo "$network.$ip_num => up"
    else
        echo "$network.$ip_num => down"
    fi
done

echo "program over"
