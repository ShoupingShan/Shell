#------------/exe-1----------------
#! /bin/sh
#for 循环的开始
for filename in `ls`
  do
    #如果文件名中包含test
    if echo "$filename" | grep "test"
    then
      #输出文件名
      echo "$filename"
    fi
done
