#!/bin/sh
myFunction() {

if [ -e $1 ]
then
	if [ -d $1 ]
	then
		echo "폴더가 이미 있습니다."
	else
		echo "같은 이름의 파일이 존재합니다."
	fi
else
	echo "file0.txt file1.txt file2.txt file3.txt file4.txt files.tar"
	eval "mkdir $1"
	eval "cd $1"
		num=0
		while [ $num -lt 5 ]
		do
			eval "touch file$num.txt"
			num=`expr $num + 1`
		done
	eval "tar cvfz files.tar * | xargs echo | sed '/file/d'"
	eval "mkdir $1"
	eval "mv files.tar ./$1"
	eval "cd $1"
	eval "tar xvfz files.tar"
	eval "cd ../.."
fi
}

myFunction $1
exit 0
