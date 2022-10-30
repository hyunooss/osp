#!/bin/sh
num1=`echo "scale=1; $1" | bc`
num2=`echo "scale=2; $2 / 100" |bc`
bmi=`echo "scale=3; $num1 / ( $num2 * $num2 )" |bc`

if [ `echo "$bmi < 18.5" |bc` -eq 1 ]
then
	echo "저체중입니다."
else 
	if [ `echo "$bmi <= 23" |bc` -eq 1 ]
	then
		echo "정상체중입니다."
	else
		echo "과체중입니다."
	fi
fi
exit 0
