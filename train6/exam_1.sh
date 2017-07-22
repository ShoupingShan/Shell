#! /bin/bash
str=`cat version.txt|grep rev`
echo "$str"
#行首定位符
echo "行首定位符"
#列出/etc目录下的以字母po开头的文件名
str=`ls /etc|grep "^po"`
echo "$str"
#行尾定位符
echo "行尾定位符"
#列出/etc目录下的以字母conf结尾的文件名
str=`ls /etc | grep "conf$"`
echo "$str"

#单个字符匹配"."
echo "单个字符匹配"
#列出所有包含字符串"samba"的文件名
str=`ls /etc | grep "samba"`
echo "$str"
echo "========================"
#列出所有包含字符串samba以及另外一个字符的文件名
str=`ls /etc | grep "samba."`
echo "$str"

#限定符"*"
#筛选出以字符s开头,紧接着一个字符s,任意个字符s的文件名
str=`ls /etc | grep "^sss*"`
echo "$str"

#字符集匹配"[]"
#筛选出所有以字符r开头,并且紧跟着一个字符c的文本行
str=`ls /etc | grep "^rc"`
echo "$str"
echo "======================="
#筛选出所有以字符r开头,紧跟着一个字符c,下面1个字符为单个数字的文本行
str=`ls /etc | grep "^rc[0-9]"`
echo "$str"
