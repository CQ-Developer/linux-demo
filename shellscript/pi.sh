#!/bin/bash

# 提示用户程序用途
echo "This program will calculate PI."

# 读取用户需要获取的PI的小数位
read -p "scale number 10-1000: " len

# 执行计算并输出计算事件
time echo "scale=${len}; 4*a(1)" | bc -l
