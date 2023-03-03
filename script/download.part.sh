#!/bin/bash
# 批量下载文件

# 这些参数可以变为手动输入
file_name="myfile.zip"
file_url="https://github.com/notofonts/noto-cjk/releases/download/Sans2.004/02_NotoSansCJK-TTF-VF.zip"
part_size=$((5 * 1024 * 1024))

# 查看文件的总大小
file_size=$(curl -sLI ${file_url} | egrep --color=auto "^content-length" | tail -n 1 | cut -d " " -f 2)
echo "total size is ${file_size}"
echo "part size is ${part_size}"

offset_end=0
loop_times=$((${file_size} / ${part_size}))

loop_index=0
for i in $(seq -w 0 ${loop_times})
do
    offset_start=$((${loop_index} * ${part_size}))
    offset_end=$((${offset_start} + ${part_size} - 1))
    part_name="${file_name}.${i}"
    echo "${i} => download part from ${offset_start} to ${offset_end} => ${part_name}"
    curl -#L -o ${part_name} -r ${offset_start}-${offset_end} ${file_url} &
    let loop_index++
done

wait
echo "download finsh"
ls -alh ${file_name}.*

echo "merging..."
cat ${file_name}.* > ${file_name}

echo "clean up..."
rm ${file_name}.*

echo "testing..."
unzip -t ${file_name}

echo "over"
