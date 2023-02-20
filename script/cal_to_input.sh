#!/bin/bash
# 让用户输入一个数
# 计算从1累加到该数的结果

read -p "input your num: " cal_end
input_check=$(echo ${cal_end} | egrep "^[0-9]+$")
if [ "${input_check}" == "" ]
then
    echo "error input: ${cal_end}, must be integer."
    exit 1
fi
cal_result=0
for ((i = 1; i <= ${cal_end}; i++))
do
    let cal_result+=i
done
echo "result is ${cal_result}"
