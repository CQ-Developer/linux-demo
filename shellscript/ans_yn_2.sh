#!/bin/bash

read -p "please input (y/n): " yn

# [ "y" == "$yn" -o "Y" == "$yn" ] && echo "Ok, continue." && exit 0
if [ "y" == $yn ] || [ "Y" == "$yn" ]; then
    echo "Ok, continue."
    exit 0
fi

# [ "n" == "$yn" -o "N" == "$yn" ] && echo "Oh, interrupt." && exit 0
if [ "n" == $yn ] || [ "N" == "$yn" ]; then
    echo "Oh, interrupt."
    exit 0
fi

echo "wrong choice."
exit 0
