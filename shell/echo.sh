#！/bin/bash
echo -n "login: "; read login
echo $login


echo -e "\033[43;34m 黄底白字 \033[0m"

echo "-e 为转意字符"
echo "\a 发出警报"
echo -e "\a\a\a"
echo "\t tab建"
echo -e "aa\t\tbbb"
echo "\n 换行"
echo -e "aa\n\nbb"
echo "\f 换行光标不变"
echo -e "aa\f\fbb"


echo "-n 不换行 -e 转义"
for time in `seq 9 -1 0`;do
if [ $time -eq 0 ] 
then
   echo -e "\btime is up"
else
   echo -n -e "\b$time"
fi
   sleep 1
done

