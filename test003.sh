#!/bin/bash
#
#ֻ��test001��test02 ��help
#
#����ĳ������N�Ľ׳� n!
#

while true
do
    echo -n "please input a numner: "
    read number
	if [ $number == "end" ];then
	    break
	fi
	echo "input number is $number"
done

echo "end the process!"
