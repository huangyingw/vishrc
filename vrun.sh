#!/bin/bash
file=${1}
extension=${file##*.}
case $extension in
  sql)
    ~/vishrc/vsql.sh ${1}
    ;;
  findresult)
    sh ${1}
    exit 0
    ;;
esac
