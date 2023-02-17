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

# 使用$((...))执行计算
result=$((${first_number}*${second_number}))
echo ${result}

# 推出程序
exit 0
