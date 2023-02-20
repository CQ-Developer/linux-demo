#!/bin/bash

# 只允许选择 1 2 3

function print_it() {
    # -n 是输出不换行
    echo -n "your choice is "
}

echo "This program will print your selection"
case $1 in
    "one")
        print_it; echo $1 | tr [:lower:] [:upper:]
        ;;
    "two")
        print_it; echo $1 | tr "a-z" "A-Z"
        ;;
    "three")
        print_it; echo $1 | tr 'a-z' 'A-Z'
        ;;
    *)
        echo "usage $0 {one | two | three}"
esac

exit 0
