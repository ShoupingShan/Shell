#! /bin/bash
#定义变量x,并且赋值为123
x=123
#把变量x加1
let "x+=1"
#输出x的值
echo "x=$x"
#替换x中的1为abc,并且赋值给y
y=${x/1/abc}
echo "y=$y"
#声明变量y
declare -i y
echo "y=$y"
let "y+=1"
echo "y=$y"
echo
z=abc22
echo "z=$z"
m=${z/abc/11}
echo "m=$m"
let "m+=1"
echo "m=$m"
n=""
echo "n=$n"
let "n+=1"
echo "n=$n"
echo
echo "p=$p"
let "p+=1"
echo "p=$p"
