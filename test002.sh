#!/bin/bash

#
#计算某个整数N的阶乘 n!
#

help (){  
	echo "----------------help-----------------"
	echo "use:  ./test002.sh n "
	echo "use:  ./test002.sh [-h or --help]"
	echo "thanks!"
	echo "----------------end------------------"
}

sum=1
n=$1

if [[ $1 == "-h" || $1 == "--help" ]];then
	help
else
	test=`echo $1 | sed 's/[0-9]//g'`
	if [ $test ];then
		echo "input a error data $test"
	else
		for num in $(seq 1 1 $n)
		do
		    let sum=sum*num
		done
		echo "sum = $sum"
	fi
fi