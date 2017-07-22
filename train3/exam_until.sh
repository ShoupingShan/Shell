#! /bin/bash
i=1
until [[ "$i" -gt 9 ]]
do
  let "sequare=i*i"
  echo "$i*$i=$sequare"
  let "i++"
done

#批量添加10个user
i=1
until [[ "$i" -eq 11 ]]
do
  useradd user$i
  echo "password" | passwd --stdin user$i > /dev/null
  let "i++"
done

#批量删除用户
i=1
until [[ "$i" -eq 11 ]]
do
  userdel -r user$i
  let "i++"
done
