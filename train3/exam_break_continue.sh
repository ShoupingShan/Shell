#! /bin/bash
for i in a b c d
do
  echo -n "$i "  #echo -n表示不换行输出
  #内层循环
  for j in `seq 10`
  do
    if [ $j -eq 5 ];then
      break
    fi
    echo -n "$j "
  done
  echo
done
echo "跳出两层循环"
for i in a b c d
do
  echo -n "$i "  #echo -n表示不换行输出
  #内层循环
  for j in `seq 10`
  do
    if [ $j -eq 5 ];then
      break 2
    fi
    echo -n "$j "
  done
  echo
done
echo
#continue
for i in a b c d
do
  echo -n "$i "  #echo -n表示不换行输出
  #内层循环
  for j in `seq 10`
  do
    if [ $j -eq 5 ];then
      continue
    fi
    echo -n "$j "
  done
  echo
done
#continue 2
for i in a b c d
do
  echo -n "$i "  #echo -n表示不换行输出
  #内层循环
  for j in `seq 10`
  do
    if [ $j -eq 5 ];then
      continue 2 #跳过两层
    fi
    echo -n "$j "
  done
  echo
done
echo
