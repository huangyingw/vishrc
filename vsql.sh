#!/bin/sh
file=${1}
user=`cat ~/vishrc/.login |awk -F'=' '/user/{print $2}'`
password=`cat ~/vishrc/.login |awk -F'=' '/password/{print $2}'`
host=`cat ~/vishrc/.login |awk -F'=' '/host/{print $2}'`
dbinstance=`cat ~/vishrc/.login |awk -F'=' '/dbinstance/{print $2}'`
mysql -u"$user" -p"$password" -h${host} ${dbinstance} < ${file} > ${file}.findresult 2>&1
