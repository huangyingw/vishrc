#!/bin/bash
file=${1}
extension=${file##*.}
case $extension in
  sql)
    ~/vishrc/vsql.sh ${1}
    read -p "press any key to continue...." update
    ;;
  findresult)
    sh ${1}
    read -p "press any key to continue...." update
    ;;
  sh)
    sh ${1}
    read -p "press any key to continue...." update
    ;;
  py)
    python ${1} > result.findresult 2>&1 
    read -p "press any key to continue...." update
    ;;
esac
