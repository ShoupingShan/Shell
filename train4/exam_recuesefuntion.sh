#! /bin/bash
#定义递归函数
#阶乘
fact()
{
  local n="$1"
  #当n=0时终止递归调用
  if [ "$n" -eq 0 ]
  then
    result=1
  else
    #当n>0时,递归计算n-1的阶乘
    let "m=n-1"
    fact "$m"
    let "result=$n * $?"
  fi
  #将计算结束以退出状态码的形式返回
  return $result

}

fact "$1"
echo "Factorial of $1 is $?"
