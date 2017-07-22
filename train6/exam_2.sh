#! /bin/bash
#限定符"+"
echo "限定符+"
#筛选以字符串"ss"开头,后面至少紧跟着一个字符"s"的文本行
str=`ls ../test | egrep "^sss+"`
echo "$str"

#限定符"?"
echo "限定符?"
#筛选以字符串"ss"开头,后面跟着0或者1个s的文本行
str=`ls ../test | egrep "^sss?"`
echo "$str"

#竖线"|"和圆括号"()"
echo "竖线\"|\"和圆括号\"()\""
#筛选含有字符串"ssh","ssl"或者字符串"yum"开头的文本行
str=`ls /etc | egrep "(ssh|ssl|^yum)"`
echo "$str"
