#!/bin/bash

# 修改以什么什么结尾的文件名为什么什么什么
# eg. ./cp.sh /var/www/dbv-page/app .scss .less
# $1 路径 $2 文件名 $3 目标后缀

var=`find $1`

str=$2

l=${#str}

for file in $var
do
	len=${#file}

	if [ $len -lt $l ] 
	then
		continue
	fi

	substr=${file:$len - l : l}
	
	new_file_name="${file:0:$len - l}$3"

	if [ $substr == $str ] 
	then
		`cp ${file} ${new_file_name}`
	fi
done