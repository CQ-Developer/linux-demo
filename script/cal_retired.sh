#!/bin/bash

# 提示用户程序的作用
echo "This program will try to calculate:"
echo "how many days before your demobilization date..."

# 读取用户的输入
read -p "please input your demobilization date (YYYYMMDD) :" input_date
# 进行正则表达式校验
checked_date=$(echo $input_date | grep '[0-9]\{8\}')
if [ "" == "$checked_date" ]; then
	echo "Invalied input..."
	exit 1
fi

# 当前时间秒数
seconds_now=$(date +%s)
# 退伍时间秒数
seconds_dem=$(date -d $input_date +%s)
# 差值
seconds_res=$(($seconds_dem-$seconds_now))

# 小于0表示已经退伍
if [ "$seconds_res" -lt "0" ]; then
	echo "you bad been demobilization before $((-1*$seconds_res/60/60/24)) days ago."
else
	echo "your demobilization date is after $(($seconds_res/60/60/24)) days."
fi

# 退出程序
exit 0
