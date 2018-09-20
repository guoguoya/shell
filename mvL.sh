#!/bin/bash

# 将当前目录下的文件变成小写
# ./mvL.sh /var/www/dbv-page/app/style
# $1 目录

var=`ls $1`;

# echo $var

for file in $var
do
	char=${file:0:1};
	len=${#file}
	a=`echo $char | tr '[A-Z]' '[a-z]'`
	substr=${file:1:$len - 1}
	new_file="$a$substr"
	path="$1/$file"
	new_path="$1/$new_file"

	`mv $path $new_path`
done