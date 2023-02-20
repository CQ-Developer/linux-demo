#!/bin/bash

# 使用while...do...done循环
# 不停的让用户输入, 直到用户输入yes为止
while [ "$yn" != "yes" ]
do
    read -p "please input your message: " input
    yn=$(echo $input | tr [:upper:] [:lower:])
done

exit 0
