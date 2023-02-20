#!/bin/bash

# 检测是否开启了主要端口

echo "now, i will detect your linux server's services"
echo "www, ftp, ssh, and mail will be detect."

testfile=/tmp/netstat_checking.txt
netstat -tuln > $testfile

testing=$(grep ":80 " $testfile)
if [ "$testing" != "" ]; then
    echo "www is running in your system"
fi

testing=$(grep ":21 " $testfile)
if [ "$testing" != "" ]; then
    echo "ftp is running in your system"
fi

testing=$(grep ":22 " $testfile)
if [ "$testing" != "" ]; then
    echo "ssh is running in your system"
fi

exit 0
