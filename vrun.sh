#!/bin/bash
file=${1}
extension=${file##*.}
case $extension in
  sql)
    ~/vishrc/vsql.sh ${1}
    ;;
  findresult)
    sh ${1}
    read -p "press any key to continue...." update
    ;;
esac
