#!/bin/bash

# 显示用户输入的目录下的文件的权限

function check_file() {
    # read
    if [ -r $1 ]; then
        readable=r
    else
        readable=-
    fi
    # write
    if [ -w $1 ]; then
        writable=w
    else
        writable=-
    fi
    # exec
    if [ -x $1 ]; then
        executable=x
    else
        executable=-
    fi
    echo "$1 perm => $readable$writable$executable"
}

read -p "input the directory that you wish to check: " input_dir
if [ "$input_dir" == "" ] || [ ! -d "$input_dir" ]; then
    echo "directory $input_dir is not exist."
    exit 1
fi

file_list=$(ls $input_dir)
for file_item in $file_list
do
    check_file $input_dir/$file_item
done
