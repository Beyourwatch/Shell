#!/bin/bash

for ((i=0;i<3;i++))

do 
	read -p "输入学生姓名："  name[$i]
	read -p "输入学生年龄："  age[$i]
	read -p "输入学生性别："  gender[$i]
    
done

clear

while :

do 
	echo "\t\t\t学员信息查询系统"
	read -p "输入学生姓名：" searchname
	result=0
	for ((i=0;i<3;i++))
	do 
		if [ "${name[$i]}" == "${searchname}" ]
		then
		echo "学生：${name[$i]}, 年龄：${age[$i]}, 性别：${gender[$i]}"
		result=1
		fi 		
		
		if [ "${searchname}" == "all" ]
		then 
		echo "${name[@]}"
		result=1
		fi
		
	done
 	
 	[ $result -eq 0 ]&& echo "student not found"



done 
