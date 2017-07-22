#! /bin/bash
#注:result和等号之间不能有空格,等号后面也不能加等号
result=`expr 2 - 10`
echo "$result"
#错误实例1
result=`expr 2-10`
echo "$result"

result=`expr 2 \* 5`
echo "$result"
result=`expr \( 2 - 6 \) \* 12`
echo "$result"

result=$((3+6))
echo "$result"
result=$((3 + 6))
echo "$result"
result=$(( 3 + 6))
echo "$result"
result=$(( ( 1-4 ) * 5 ))
echo "$result"
result=$[4+5]
echo "$result"
result=$[(1+2)*3]
echo "$result"
#幂运算
result=$[2**4]
echo "$result"
n=10
let n=n+1
echo "$n"
let n=n**2
echo "$n"
