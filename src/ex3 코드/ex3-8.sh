#!/bin/sh
myFunction() {
file="DB.txt"
if [ ! -e $file ]
then
	eval "touch $file"
fi
echo "$*" >> $file
}


myFunction $*
exit 0
