#! /bin/bash
i=1
while [[ "$i" -lt 10 ]]
do
  let "square=i*i"
  echo "$square"
  let "i++"
done

for ((i=1;i<=9;i++))
do
  for ((j=1;j<=i;j++))
  do
    let "product=i*j"
    printf "$i*$j=$product"
    if [[ "$product" -gt 9 ]]
    then
      printf "  "
    else
      printf "   "
    fi
    if [[ "$j" -eq 5 ]]
    then
      break
    fi
  done
  echo
done
#break 2表示跳出两层循环
for ((i=1;i<=9;i++))
do
  for ((j=1;j<=i;j++))
  do
    let "product=i*j"
    printf "$i*$j=$product"
    if [[ "$product" -gt 9 ]]
    then
      printf "  "
    else
      printf "   "
    fi
    if [[ "$j" -eq 5 ]]
    then
      break 2
    fi
  done
  echo     #这一句没有来得及执行
done
echo
