#!/bin/bash

# 只允许选择 1 2 3

echo "This program will print your selection"
case $1 in
    "one")
        echo "your choice is ONE"
        ;;
    "two")
        echo "your choice is TWO"
        ;;
    "three")
        echo "your choice is THREE"
        ;;
    *)
        echo "usage $0 {one | two | three}"
esac

exit 0
