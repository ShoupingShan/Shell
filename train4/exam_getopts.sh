#! /bin/bash
:<<BLOCK
getopts optstring [args]
参数optstring包含一个可以为getopts命令识别的选项名称列表.
如果某个选项名称之后跟着一个冒号,则表示用户可以为该选项提供
参数值.同时,参数值将被保存在一个名称为$OPTARG的系统变量中.
getopts命令会依次遍利每一个选项,选项名称将被保存到args变量中.
BLOCK

func()
{
  while getopts "a:b:c" arg
  do
    #当选择-a选项时
    case "$arg" in
      a)
        echo "a's argument is $OPTARG"
        ;;
      b)
        echo "b's argument is $OPTARG"
        ;;
      c)
       echo "c"
       ;;
      ?)
      #未知选项
      echo "unknown argument."
      exit 1
      ;;
    esac
  done

}

func -a hello -b world -X SSS
