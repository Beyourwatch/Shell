#!/bin/bash
#Author: bb6
#DATUM: 2021.12.12
# nginx install script for test

#检测用户是否为root
#检测依赖包
#安葬准备
#安装
#启动测试

function check {
	echo "$USER"
	if [ "$USER" != 'root' ]
	    then
	        echo "USER must be root, exit"
		exit 1
	else
	 	echo "USER OK"    	
	fi

	if [ ! -x /usr/bin/apt ]
	    then 
	        echo "no apt"
		exit 1
	else 
		echo "apt ready"
	fi
}


function install {
	
	echo "judge if nginx exsis"
	num=`sudo which nginx`
	echo $num
	if [ $num  == "" ];then
		apt install nginx
	else
		echo -n 'nginx installed:';echo -e "\b `nginx -v`"
	fi
	
}

check
install
