#!/bin/bash

# 提示用户将创建3个文件
echo "This program will create 3 file named after date."
read -p "Please input file name: " filename

# 获取日期并格式化
date1=$(date -d "-2 day" +%Y%m%d)
date2=$(date -d "-1 day" +%Y%m%d)
date3=$(date -d "-0 day" +%Y%m%d)

# 获取文件名
file1=${filename}_${date1}.txt
file2=${filename}_${date2}.txt
file3=${filename}_${date3}.txt

# 创建文件
touch ${file1}
touch ${file2}
touch ${file3}

# 推出程序
exit 0
