#!/bin/bash

# 随机选择中午吃什么
foods=("肯德基" "麦当劳" "必胜客" "汉堡王" "盖浇饭" "炒饭" "炒面" "牛肉拉面" "水饺" "馄饨")

# *号和@号的作用相同
# 需要注意 #号 和 !号
foods_len=${#foods[@]}
foods_len_2=${#foods[*]}
echo "数组的长度 ${foods_len}"
echo "数组的长度 ${foods_len_2}"
echo "数组的键 ${!foods[*]}"
echo "数组的值 ${foods[*]}"

for ((i = 0; i < 3; i++))
do
    random_index=$((${RANDOM} % ${foods_len}))
    echo "we may eat ${foods[$random_index]}"
done
