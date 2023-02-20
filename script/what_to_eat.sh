#!/bin/bash

# 随机选择中午吃什么

foods[0]="肯德基"
foods[1]="麦当劳"
foods[2]="必胜客"
foods[3]="汉堡王"
foods[4]="盖浇饭"
foods[5]="炒饭"
foods[6]="炒面"
foods[7]="牛肉拉面"
foods[8]="水饺"
foods[9]="馄饨"
foods_len=10

for ((i = 0; i < 3; i++))
do
    random_index=$((${RANDOM} % ${foods_len}))
    echo "we may eat ${foods[$random_index]}"
done
