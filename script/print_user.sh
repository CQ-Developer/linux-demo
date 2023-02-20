#!/bin/bash
# 输入行数和用户数
user_line=1
for user_name in $(cut -s -d : -f 1 /etc/passwd)
do
    echo "The ${user_line} is ${user_name}"
    let user_line++
done
