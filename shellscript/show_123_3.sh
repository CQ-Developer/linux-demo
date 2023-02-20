#!/bin/bash

# 只允许选择 1 2 3

# function中的$0表示function的名称
# function中的$1表示function的第1个参数
# 以此类推
function print_it() {
    echo "your choice is $1"
}

echo "This program will print your selection"
case $1 in
    "one")
        print_it 1
        ;;
    "two")
        print_it 2
        ;;
    "three")
        print_it 3
        ;;
    *)
        echo "usage $0 {one | two | three}"
esac

exit 0
