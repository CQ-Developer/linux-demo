#!/bin/bash

# 提示用户程序的作用
echo "This program will make multiplication operation."

# 读取用户输入的两个数字
read -p "input your number a: " first_number
read -p "input your number b: " second_number

# 使用declare执行计算
# declare -i result=${first_number}*${second_number}

# 使用expr执行计算
# result=$(expr ${first_number} \* ${second_number})

# 使用let执行计算
# result=1
# let result*=first_number
# let result*=second_number

# 使用bc进行计算
# 使用bc可以进行小数的计算并指定精度
# echo "scale=3; ${first_number}*${second_number}" | bc

# 使用$((...))执行计算
result=$((${first_number}*${second_number}))
echo ${result}

# 推出程序
exit 0
