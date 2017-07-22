#! /bin/bash
:<<BLOCK
例如:
var=name
name=john
那么对于第二个变量可以通过以下两种方式来引用
${name}    ${!var}
间接变量的引用语法: ${!var_name}其中var_name的值是另一个变量的名称
当用户使用以上语法间接引用变量时,实际上取得的是var_name的值代表的变量
的值,而不是变量var_name的值
BLOCK
func()
{

  echo "$1"
}
var=name
name=John
func "$var"
func ${!var}
name=alice
func "$var"
func ${!var}


#传递数组参数
func2()
{
  echo "number of elements is $#."
  while [ $# -gt 0 ]
  do
    echo "$1"
    shift
  done
}
#定义数组
a=(a b "c d" e)
#调用函数
func2 "${a[@]}"  #变量${a[@]}可以获取数组所有元素的值
#如果把变量外面的双引号""去掉,那么第三个元素因为有空格会误认为两个元素
func2 ${a[@]}
