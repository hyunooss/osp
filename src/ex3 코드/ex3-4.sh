#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer
case $answer in
  yes | y | Y | yes | YES | yeah)
  	echo "yes";;
  [nN]*)
  	echo "no";;
  *)
  	echo "yes or no로 입력해 주세요.";;
esac
exit 0
