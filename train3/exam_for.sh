#! /bin/bash
for var in {1..8}
do
  echo "The number is $var"
done
sum=0;
#{起点..终点..步长}
for var in {1..8..2}
do
  echo "The number is $var"
  let sum+=$var
#或者  let "sum+=var"  let sum+=var
done
echo "$sum"

#如果使用字符串作为列表元素,实际上可以省略大括号
for day in Mon Tue Wen Thu Fir Sat Sun
do
  echo "$day"
done
#打印文件夹目录
for file in `ls`
do
  echo "$file"
done
#或者
for file in $(ls)
do
  echo "$file"
done
#或者
for file in *
do
  echo "$file"
done
#打印所有的参数
echo "$*"
for arg in $*
do
  echo "${arg}"
done

#可以不使用条件列表等同于$*和$@
echo "$*"
for argc
do
  echo "$arg"
done
#c语言风格
for ((i=1;i<5;i++))
do
  echo "$i"
done

#访问数组
array=(Mon Tue Wen Thu Fir Sat Sun)
for day in ${array[*]}
do
  echo "$day"
done
