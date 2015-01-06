#!/bin/bash
echo path in "$1/"
echo keyword is "$2"
find_result="$1/""`echo "$2".csc.findresult |sed  -e "s/\//\_/g;s/\ /\_/g"`"
echo find_result is "$find_result"
cscope -dL -f "$1/"cscope.out -4"$2" > "$find_result" 
