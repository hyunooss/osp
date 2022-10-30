#!/bin/sh
if [ $# -eq 0 ]
then 
	num=11
else
	num=$1
fi
	
i=1
while [ $i -le $num ]
do
	echo "hello world"
	i=`expr $i + 1`
done
exit 0
