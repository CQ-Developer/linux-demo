#!/bin/bash

# 从192.168.1.1开始ping到192.168.1.100
network="192.168.1"
for ip_num in $(seq 1 100)
do
    ip_address="$network.$ip_num"
    ping -c 1 -w 1 $ip_address 2>&1 > /dev/null
    if [ "$?" == "0" ]; then
        echo "$ip_address => up"
    else
        echo "$ip_address => down"
    fi
done

echo "program over"
