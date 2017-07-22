#! /bin/bash
:<<BLOCK
一共有两种表示方法
1.function_name()
  {
  }
2.function function_name()
  {
  }
BLOCK
#定义函数
function sayhello()
{
  echo "Hello World!"
}
#调用函数
#函数必须在调用前定义
sayhello
 getCurrentTime()
 {
   current_time=`date`
   echo "$current_time"
 }
 getCurrentTime
