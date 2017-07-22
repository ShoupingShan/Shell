#! /bin/sh
# echo "Hello World" > ./msg.log
# if [ -f ./msg.log ] ; then cat msg.log; fi
echo "Please Input a Score:"
read score
if [ -z "$score" ];then
  echo "You enter nothing. Please enter a score:"
  read score
else
  #如果用户输入的数据不对,则重新输入
  if [ "$score" -lt 0 -o "$score" -gt 100 ]; then
    echo "The score should be between 0~100. Please input again:"
    read score
  else
    if [ "$score" -ge 80 ];then
    echo "A"
    elif [ "$score" -ge 60 ];then
    echo "B"
    elif [ "$score" -ge 45 ];then
    echo "C"
    else echo "傻了吧!"
    fi
  fi
fi
