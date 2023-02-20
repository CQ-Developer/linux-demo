#!/bin/bash

# 使用until...do...done循环
# 不停的让用户输入, 直到用户输入yes为止
until [ "$yn" == "yes" ]
do
    read -p "please input your message: " input
    yn=$(echo $input | tr [:upper:] [:lower:])
done

exit 0
