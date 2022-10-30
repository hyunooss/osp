#!/bin/sh
myFunction() {
file="DB.txt"
if [ ! -e $file ]
then
	echo "DB파일이 없습니다."
else
	eval "cat $file | grep $1"
fi
}


myFunction $1
exit 0
