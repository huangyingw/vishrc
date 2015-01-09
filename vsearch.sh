#!/bin/bash
find_result="$1/""`echo "$2".csc.findresult |sed  -e "s/\//\_/g;s/\ /\_/g"`"
if [ -f "$find_result" ]; then
  read -p "the search is already done, if you want to update, press u --> " update
  case $update in
    u)
      ;;
    "")
      exit 1
      ;;
    ?)
      exit 1
      ;;
  esac
fi
fgrep -wnH "$2" `cscope -dL -f "$1/"cscope.out -"$3""$2"|awk '!/findresult/{print $1}'|awk '!x[$0]++'` > "$find_result"  
