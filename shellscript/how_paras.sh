#!/bin/bash

# 测试脚本参数

echo "the script name is: $0"
echo "total parameters is: $#"
[ "$#" -lt 2 ] && echo "total parameters less than 2, stop here." && exit 0
echo "parameters are: $@"
echo "first parameter is: $1"
echo "second parameter is: $2"

exit 0
