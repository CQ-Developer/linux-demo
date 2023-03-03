#!/bin/bash
# 批量下载文件

# 这些参数可以变为手动输入
file_name="myfile.zip"
file_url="https://github.com/notofonts/noto-cjk/releases/download/Sans2.004/02_NotoSansCJK-TTF-VF.zip"
part_size=$((50*1024*1024))

# 查看文件的总大小
file_size=$(curl -sLI $file_url | egrep --color=auto "^content-length" | tail -n 1 | cut -d " " -f 2)
echo "total size is $file_size"

offset_end=0
loop_times=$(($file_size / $part_size))

i=0
for ((i = 0; i < $loop_times; i++))
do
    offset_start=$(($i * $part_size))
    offset_end=$(($offset_start + $part_size - 1))
    echo "download part from $offset_start to $offset_end"
    curl -sL -o $file_name.$i -r $offset_start-$offset_end $file_url &
done

let offset_end++
echo "download part from $offset_end to end"
curl -sL -o $file_name.$i -r $offset_end- $file_url &

wait
echo "download finsh"
ls -al $file_name.*

echo "merging..."
cat $file_name.* > $file_name

echo "clean up..."
rm $file_name.*

echo "testing..."
unzip -t $file_name

echo "over"