#!/bin/bash

# 用户输入文件名
# 未输入，给出提示退出
# 不存在，给出提示退出
# 提示是文件或目录
# 输出权限

read -p "input file name: " filename
test -z $filename && echo "file name is empty, program terminated." && exit 0

test ! -e $filename && echo "$filename not exist." && exit 0
test -f $filename && echo "$filename is a file."
test -d $filename && echo "$filename is a directory."

r=$(test -r $filename && echo r || echo -)
w=$(test -w $filename && echo w || echo -)
x=$(test -x $filename && echo x || echo -)
echo $r$w$x

exit 0
