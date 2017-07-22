#! /bin/bash
echo "Hit a key"
read key
case "$key" in
  [[:lower:]])
    echo "小写字母";;
  [[:upper:]])
    echo "大写字母";;
    [0-9])
    echo "数字";;
    *)
    echo "else";;
  esac
