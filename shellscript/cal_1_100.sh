#!/bin/bash

# 计算1加到100的结果

i=1
r=0
while [ "$i" -le "100" ]
do
    r=$(($r+$i))
    i=$(($i+1))
    echo $i
done
echo "1+...+100 = $r"

exit 0
