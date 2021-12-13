#运行环境
#!/user/bin/bash


echo "hello world"
echo $USER

a=10
b=10

val= expr $a + $b
echo "a*b is $val"

expr 1 + 1.1 
expr 1 + 1.1 &> /dev/null ; echo $?  #输出结果到回收站，输入正确与否
expr 1 + 2 &> /dev/null ; echo $?

if [ $a -gt $b  -o $a -eq $b ]
then
   	echo " a= $a, is greater than b = $b"
else 
	echo " a= $a, is smaller than b = $b"
fi

if [ $a -ne $b ] 
then
   	echo " a= $a, is not equal b = $b"
else 
	echo " a= $a, is equal b = $b"
fi

if [ $a -le $b ]
then
   	echo " a= $a, is small and equal than b = $b"
else 
	echo " a= $a, is greater than b = $b"
fi

str1="abcd"

echo " length of $str1 is ${#str1}"

echo -e "hello \n hello" #换行

echo -e "hello  hello \c" #不换行
echo -e "hello "

#输出
echo "create a file" > newfile.txt
echo "add new line" >> newfile.txt
echo "add new line2" >> newfile.txt

echo `date`



echo "input value: "
read num
case $num in 
    1) echo "case: num = 1"
    ;;
    2) echo "case: num = 2"
    ;;
    *) echo "case: no value for num"
    ;;
esac


if [ $num = 1 ] 
then
   echo "if: num = 1"
elif [ $num = 2 ] 
then
   echo "if: num = 2"
else 
   echo "if: no value for num"
fi


for var in 1 2 3 4 5
do 
   echo "for loop: the value is $var"
done

i=1
while (($i<=5))
do
   echo "while loop: $i"
   let i=i+1  
   let "i++"	
done


#输出小数
echo "当前内存使用率: `echo "scale=2;144*100/766"|bc` %"
 

    
    


