#! /bin/sh
if [ -e "$1" ]
then
  echo "file $1 exits."
  exit 1
else
  touch "$1"
  echo "file $1 has been created."
  exit 0
fi
