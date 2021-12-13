#!/bin/bash

echo  "输入变量 bash conrtol.sh *** -> \$1"
echo $1 $2

echo "for loop"
for i in `seq 1 9`
  do 
    echo $i
    
done

echo "for loop, 1-9 ++2, break"
for i in `seq 1 2 9`
  
  do 
    if [ $i == 5 ]
    then 
        break
    fi
    
    
    echo $i;sleep 0.1
    
done

echo "for loop 1 3 4 15, continue"
for i in 1 3 4 15
  do 
    if [ $i -eq 4 ]
    then
  	continue
    fi
  
    echo $i;
    
done


echo "for loop variant 2"

for ((i=0;i<19;i=i+4))
  do 
    echo $i; 
done

echo "多变量"

for ((i=0,j=1;i<6,j<8;i++,j=j+2))
  do
    echo -e "$i\t$j"
done 


for ((i=1;i<10;i++))
do
	
	for ((j=1;j<=i;j++))
	do
		echo -e "$i*$j= "`echo $i*$j|bc`" \c"
	done
	echo ""

done





for ((;;))
  do 
    ping -c 1 "www.baidu.com"&>/dev/null
    
    if [ $? == 0 ]
    then
      	echo -e "`date +"%F %H:%M:%S"`  \033[32m internet is up \033[0m"
    else
    	echo "`date +"%F %H:%M:%S"` internet is down"    
    fi
      
    sleep 5  
done

