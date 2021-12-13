echo '********$3********'
awk '{print $3}' awkfile

echo '********$0********'
awk '{print $0}' awkfile

echo '********NR==3 $3********'
awk 'NR==3{print $3}' awkfile

echo '********NR==1 $1 $3********'
awk -F ":" 'NR==1{print $1"---" $3}' awkfile


echo '*******计算内存使用率*****'
head -2 /proc/meminfo | awk 'NR==1{total=$2}NR==2{free=$2;print "used: " (total-free)*100/total "%"}'


echo "********输出数组************"
awk 'BEGIN{array[0]="name"; array[1]="age"; print array[0] array[1] }'

echo "*******条件输出******"
seq 1 100 | awk '$1>90{print $1}'

echo "*********定义变量***********"
awk -v "count=0" 'BEGIN{count++;print count}'

echo "*********匹配***************"
awk -F ":" '$1==1321{print $0}' awkfile

echo "**********分割符*************"
awk 'BEGIN{FS=":";OFS="|__|"}$1==333{print $1,$2,$3}' awkfile

echo "***********行分割符--列分割符*****"
awk 'BEGIN{RS=""}{print $1,$2,$3,$4}' awkfile


awk 'BEGIN{RS="";OFS="\n"}{print $1,$2,$3,$4}' awkfile

echo "************* awk + for **********"
awk '{sum=0;i=1;while(i<4){sum+=$i;i++}print sum}' awknum
awk '{sum=0;i=1;if($1>20){print $1}}' awknum


echo '************ 打印行号*************'
awk '{print NR}' awknum
awk '{i=1;while(i<4){if($i>20){print "value: " $i; print "row:" NR}i++}}' awknum




