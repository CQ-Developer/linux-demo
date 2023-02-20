#!/bin/bash

# 读取用户的firset_name和last_name
read -p "input your first name: " first_name
read -p "input your last name: " last_name

# 打印用户的完整名称
echo "your full name is: ${first_name}·${last_name}"

# 推出程序
exit 0
