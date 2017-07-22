#-------------exe-3
#! /bin/sh

#输出参数索引
echo "OPTION starts at $OPTIND"
#接收参数
while getopts ":pq:" optname
  do
    case "$optname" in
      "p")
      echo "Option $optname is specified"
      ;;
      "q")
      echo "Option $optname has value $OPTARG"
      ;;
      "?")
      echo "Unknown option $OPTARG"
      ;;
      ":")
      echo "No argument value for option $OPTARG"
      ;;
      #Should not occer
      *)
      echo "Unknown error while processing options"
      ;;
    esac
    echo "OPTION is now $OPTIND"
done
