#！/bin/bash

case $1 in 
1|2)
	echo "go"
	run=1
;;
*)
	echo "stop"
	run=0 
;;
esac
	


while [ $run == 1 ]

do
read -p "input your num:" CASE

case $CASE in
1)
	echo "output 1"
;;
2)
	echo "output 2"
;;
*)
	echo "1|2"
;;
esac

done 

