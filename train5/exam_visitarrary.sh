#! /bin/bash

#数组切片:
#     表达式=>${array[@或者*]:start:length}
#start:起始元素下标(数组一定是从零开始)

linux=("Debian" "Redhat" "Ubuntu" "Suse" "Fedora" "UTS" "Centos")
#数组切片
echo ${linux[@]:2:4}
var=${linux[@]:2:4} #此处的var是一个字符串变量

#若想要把切片仍然赋值成一个数组
#  (${array}[@|*]:start:length)
#若想对某一个数组元素进行切片(如果start+length超出长度都只会截到末尾):
#  ${array[n]:start:length}


#数组元素的替换
# ${array[@|*]/pattern/replacement}
#pattern表示要搜索的字符串 replacement表示用来替换的字符串
a=(1 2 3 4 5)
echo "the result is ${a[@]/3/100}"
echo "the old array is ${a[@]}"
a=(${a[@]/3/100})
echo "The new array is ${a[@]}"
