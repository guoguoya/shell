#!/bin/bash

# 将某个目录下的所有什么文件迁移是目标目录且以原上层目录为文件名
# eg. ./cpTo.sh '/var/www/dbv-page/app' '.less' '/var/www/dbv-page/app/style'
# $1 路径 $2 文件名 $3 目标目录

var=`find $1`

str=$2

l=${#str}

# echo "$var\n"

for file in $var
do
	# echo $file
	len=${#file}

	if [ $len -lt $l ] 
	then
		continue
	fi

	substr=${file:$len - l : l}
	
	# echo $substr
	regex=".*/\(.*\)/.*$2";

	new_file_name=`expr $file : $regex`
	

	if [ $substr == $str ] 
	then 
		wdir="$3/$new_file_name$2";
		# echo 'get'
		# echo $1
		# echo $2
		echo $file
		# echo $regex
		# echo $new_file_name
		echo $wdir
		`cp $file $wdir`
	fi
done