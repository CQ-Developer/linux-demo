#!/bin/bash

# 使用 for((...)) 循环计算1+2+...+用户输入的累加和

echo "input your num, i will accumulate from 1 to this num"
read -p "input: " input_num

accumulate_result=0
for ((i=1; i<=$input_num; i++))
do
    accumulate_result=$(($accumulate_result+$i))
done

echo "1+2+...+$input_num=$accumulate_result"
