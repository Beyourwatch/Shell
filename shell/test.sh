#!/bin/bash

echo "输出 test 结果"
test 1 -eq 1; echo " 1 -eq 1  $?"
test 1 -lt 1; echo " 1 -lt 1 $?"
test 1 -gt 1; echo " 1 -gt 1 $?"
test 1 -ge 1; echo " 1 -ge 1 $?"
test 1 -le 1; echo " 1 -le 1 $?"
test 1 -ne 1; echo " 1 -ne 1 $?"


echo "仅成立时输出"
test 1 -eq 1&& echo " 1 -eq 1  $?"
test 1 -lt 1&& echo " 1 -lt 1 $?"
test 1 -gt 1&& echo " 1 -gt 1 $?"
test 1 -ge 1&& echo " 1 -ge 1 $?"
test 1 -le 1&& echo " 1 -le 1 $?"
test 1 -ne 1&& echo " 1 -ne 1 $?"


echo "比较浮点 放大倍数"
num1=`echo "1.5*10"|bc|cut -d "." -f1`
num2=15

test $num1 -eq $num2; echo $?

echo "判断文件和文件夹"
test -d ~/Public/shell; echo "文件夹 -d $?"
test -f ~/Public/shell/read.sh; echo "文件 -f read.sh -f $?"
test -f ~/Public/shell/read; echo "文件 -f read -f $?" 
test -e ~/Public/shell/read; echo "文件 -e exsis $?"
test -e ~/Public/shell; echo "文件 -e exsis $?"  

echo "字符串运算"
test $USER == "root"; echo "当前用户为root  $?"
test $USER != "root"; echo "当前用户不为root  $?"
test -n " " ; echo "字符长度不为0： $?"
test -n "" ; echo "字符长度不为0： $?"
test -z "root"; echo "字符长度为0： $?"
test -z ""; echo "字符长度为0：$?"



