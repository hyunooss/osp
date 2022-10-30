#!/bin/sh
myFunction() {
echo "함수 안으로 들어 왔음"
if [ "$#" -eq 0 ]
then
	str="ls"
else
	str="ls $1"
fi
eval $str
}
echo "프로그램을 시작합니다."
myFunction $1
echo "프로그램을 종료합니다."
exit 0
