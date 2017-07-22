#! /bin/bash
#通过指定元素值来定义数组
array[1]=one
array[3]=three
array[10]=ten
echo "${array[@]}"
echo "${array[2]}"
#通过declare语句定义数组
declare -a arr #-a选项表示后面定义的是一个数组
arr[0]=1
arr[1]=2
echo "${arr[@]}"
#通过元素值集合定义数组
:<<BLOCK
array=(v0 v1 v2 ...vn)
BLOCK
array=(1 2 3 4 5 6 7 8)
echo "${array[0]}"
echo "${array[@]}"
echo "${#array[@]}"
#通过键值对定义数组
:<<BLOCK
array=([0]=value0 [1]=value1 [2]=value2 ... [n]=valuen)
BLOCK
array=([0]=zero [4]=four)
echo "${#array[@]}"
echo "${array[4]}"

declare -A arrays
arrays=([flower]=rose [fruit]=apple)
echo "${#arrays[@]}"
echo "${arrays[fruit]}"
