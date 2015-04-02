#!/bin/sh
file=${1}
user=`cat ~/loadrc/vishrc/.login |awk -F'=' '/user/{print $2}'`
password=`cat ~/loadrc/vishrc/.login |awk -F'=' '/password/{print $2}'`
host=`cat ~/loadrc/vishrc/.login |awk -F'=' '/host/{print $2}'`
dbinstance=`cat ~/loadrc/vishrc/.login |awk -F'=' '/dbinstance/{print $2}'`
mysql -u"$user" -p"$password" -h${host} ${dbinstance} < ${file}
