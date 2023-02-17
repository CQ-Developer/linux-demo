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

# r=$(test -r $filename && echo r)
# test -z $r && declare r=-
# w=$(test -w $filename && echo w)
# test -z $w && declare w=-
# x=$(test -x $filename && echo x)
# test -z $x && declare x=-
# echo $r$w$x

test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
echo "your perm of $filename is $perm"

exit 0
