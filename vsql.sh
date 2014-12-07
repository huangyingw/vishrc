#!/bin/sh
file=${1}
user=`cat ~/vishrc/.login |awk -F'=' '/user/{print $2}'`
password=`cat ~/vishrc/.login |awk -F'=' '/password/{print $2}'`
host=`cat ~/vishrc/.login |awk -F'=' '/host/{print $2}'`
dbinstance=`cat ~/vishrc/.login |awk -F'=' '/dbinstance/{print $2}'`
echo $user
echo $password
echo $host
echo $dbinstance
echo $file
read -p "press any key to continue " update

#mysql -u"$user" -p"$PASSWD" -h127.0.0.1 $DB < ${file} > result.findresult
