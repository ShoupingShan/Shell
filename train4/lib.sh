#! /bin/bash
error()
{
  echo "ERROR:" $@ 1>&2
}
warning()
{
  echo "WARNING" $@ 1>&2
}
