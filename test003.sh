#!/bin/bash
#
#只有test001和test02 有help
#
#计算某个整数N的阶乘 n!
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
