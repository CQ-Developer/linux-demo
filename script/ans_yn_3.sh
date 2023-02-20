#!/bin/bash

read -p "please input (y/n): " yn

# 使用多重条件判断
if [ "y" == $yn ] || [ "Y" == "$yn" ]; then
    echo "Ok, continue."
elif [ "n" == $yn ] || [ "N" == "$yn" ]; then
    echo "Oh, interrupt."
else
    echo "wrong choice."
fi

exit 0
