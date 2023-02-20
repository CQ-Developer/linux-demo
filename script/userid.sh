#!/bin/bash

# 使用id命令检查用户

usernames=$(cut -d : -f 1 /etc/passwd)
for username in $usernames
do
    id $username
done
