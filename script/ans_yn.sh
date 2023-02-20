#!/bin/bash

# 只允许用户输入yn
read -p "please input (y/n): " yn

# 使用中括号进行判断
[ "y" == "$yn" -o "Y" == "$yn" ] && echo "Ok, continue." && exit 0
[ "n" == "$yn" -o "N" == "$yn" ] && echo "Oh, interrupt." && exit 0

echo "wrong choice."
exit 0
