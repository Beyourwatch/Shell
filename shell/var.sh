#!/bin/bash

a=999
echo $a

echo "普通 array"
array1=(3 4 5 6 7)
echo ${array1[2]}
array1[5]="a"
echo "all member in arrar:  ${array1[@]}"

echo "number of member: ${#array1[@]}"

echo "from 2 to end: ${array1[@]:2}"

echo "from 2 to 4: ${array1[@]:2:3}"

echo "关联 数组"
declare -A ass_array1
declare -A ass_array2

ass_array1=( [name]=bb6  [age]=18 )

ass_array2[name]=bb5
ass_array2[age]=19

echo "${ass_array1[name]}"
echo "${ass_array2[@]}"

declare -A
