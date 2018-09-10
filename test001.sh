#!/bin/bash

#
#��ѯĳ��Ŀ¼����ͨ�ļ��ĸ���
#

help (){  
	echo "----------------help-----------------"
	echo "use:  ./test001.sh [dir] "
	echo "use:  ./test001.sh [-h or --help]"
	echo "thanks!"
	echo "----------------end------------------"
}

#����·��������ļ�����
seek_file (){

echo $1
count=0

for file in $(ls $1)
do
	file_path=$1$file
    if [ -f $file_path ]
	then
	   let count++
	   echo "$file "
	fi
done
 
return $count
}


path=$1

#�ж��Ƿ�Ϊhelp
if [[ $1 == "-h" || $1 == "--help" ]];then
	help
else
	if [ ! -d $path ];then
		echo "$path not is a dir"
	else
		seek_file $path
		echo "$path have $? file"
	fi
fi
