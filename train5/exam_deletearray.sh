#! /bin/bash
#删除指定数组元素   unset array[n]
#删除整个数组      unset array
#复制数组         newarray=("${array[@]}")
#连接数组         ("$array1[@]" "$array2[@]")
#加载文件内容到数组
content=(`cat "demo.txt"`)
for s in "${content[@]}"
do
  echo "$s"
done
