#! /bin/bash

:<<BLOCK
  使用UNIX制表符,制表符的功能是在不适用表格的情况下,在垂直方向上按列对齐文本.
BLOCK
#双层嵌套循环输出乘法表
# for((i=1;i<10;i++))
# do
#   for((j=1;j<i;j++))
#   do
#     echo -n -e "$i*$j\t"
#   done
#   echo ""
# done

:<<BLOCK
  使用fold命令格式化行,将超过指定宽度的文本行进行折叠处理,使得超过指定宽度的
  字符转到下一行输出.    fold [options] [file..]
  -b : 按字节计算宽度.默认情况下,fold命令按照列来计算宽度
  -s : 在空格处折断行
  -w : 指定宽度,默认值是80列
BLOCK
# fold -w 100 demo.txt
# fold -s -w 100 demo.txt>formatdtext.txt

:<<BLOCK
  使用fmt命令格式化段落
  fmt [-width] [option]... [file]...
  如果指定的文件名为-,则表示fmt将会从键盘上读取文本
BLOCK
#指定行长度
# str=`fmt -s -c -w 80 harry.txt`
# echo "$str"

:<<BLOCK
  使用rev命令反转字符顺序(按行反转)
  rev [file...]
BLOCK
# str=`rev hello.txt`
# echo "$str"

:<<BLOCK
  使用pr命令格式化文本页
  pr [option]... [file]...
BLOCK
#格式化文本页,把txt内容分成四栏输出
# str=`pr -2 hello.txt`
# echo "$str"
#自定义页眉,文本水平分栏以及使用换页符来替代换行符
str=`pr -h "List of countries" -a -f -2 hello.txt`
echo "$str"



echo
