#！/bash/bin

sed 'ahello world ' sedfile
sed '3a helloworld' sedfile

echo '匹配第三行 line3'
sed '/line3/i helloworld' sedfile
sed '/line3/a helloworld' sedfile

echo 'delete'
sed '2,5d' sedfile


echo 'delete start with line and digit and space $'
sed -r '/(^line|^[[:digit:]]|^$)/d' sedfile

echo "********************************"
echo "replace"
sed  's/line/row/' sedfile
sed  's/line/row/2' sedfile
sed  's/line/row/g' sedfile

echo '********************************'
echo "c-->change"
sed '1,7chelloworld' sedfile

echo "********************************"
echo "y"
sed 'y/abcdefghijklmn/ABCDEFGHIJKLMN/' sedfile

echo '********************************'
echo "-e multi condition"
sed -e 's/line/row/g;s/1/10000/' sedfile


echo '********************************'
echo "-f save condition to a script"
sed -f sedscript sedfile

cat sedfile

echo '********************************'
echo "-i change the file"
sed -i.bak -f sedscript sedfile


echo "**********************************"
echo "输出 行号"
sed -n '$=' sedfile

echo "**********************************"
echo "输出替代 不带文件"
echo "hello world" | sed 's/world/china/'


echo "**********************************"
echo "输出 行号"
sed  -n -r '/(^line)(.*)/p' sedfile.bak

