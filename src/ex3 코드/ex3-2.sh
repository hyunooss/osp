#!/bin/sh
num1=$1
opt=$2
num2=$3

echo `expr $num1 $opt $num2`
exit 0
