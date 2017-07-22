#! /bin/bash
# john()
# {
#   echo "This is John"
# }
# alice()
# {
#   john
#   echo "This is alice"
# }
# alice
length()
{
  #接收函数
  str=$1
  result=0
  if [ "$str"!="" ];then
    result=${#str}   #求str的长度
  fi
  echo "$result"
}
len=$(length "abc123")
echo "The string's length is $len"
func()
{
#输出参数个数
echo "The functionhas $# parameters ."

}
func a b c d e f g Hello
func 12 3 "hello world"
func
