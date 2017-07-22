#! /bin/bash
#echo基础用法
#echo [option] string...
#  -n表示不输出行尾换行符
# echo -n "What's your name?    "
# read name
# echo "What's your number?"
# read num

#  -e支持转义字符
#退格符
echo -e "this is a\b string."
#禁止继续输出后面的文本
echo -e "hello \c world"
#换行符
echo -e "hello \n world"
#使用制表符输出表格
echo -e "Alice\t99"
echo -e "John\t82"
echo -e "Tom\t91"

#显示变量
# echo -n "Please Input a Name: "
# read Name
echo "Hello, $Name"
v1=string
v2=danc
echo "We are ${v1}ing,we are ${v2}ing."

#显示命令执行结果
# echo `command`
echo `date`

#echo命令执行结果的重定向
:<<BLOCK
  重定向的操作符为>或者>>,在目标文件已经存在的情况下,前者会覆盖目标文件原有内容
  后者则会将数据追加到原来文件的末尾.
BLOCK
#将要输出的信息写入文件
echo "Hello, world.">hello.txt
#将要输出的信息追加到文件的末尾
echo "Hello, nihao">>hello.txt
