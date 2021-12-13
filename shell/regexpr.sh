#!/bin/bash

echo "输出 ^a"
egrep "^a" reg_expr_file

echo "输出 ^ac$"
egrep "^ac$" reg_expr_file

echo "输出 ^a.c$"
egrep "^a.c$" reg_expr_file

echo "输出 ^a*c$"
egrep "^a*c" reg_expr_file

echo "输出 ^a\*c$"
egrep "^a\*c$" reg_expr_file

echo "输出 ^a[a-c]c$"
egrep "^a[a-c]c$" reg_expr_file

echo "输出 ^(a|b)c$ a or b"
egrep "^(a|b)c$" reg_expr_file

                                 
echo "输出 ^ab*c$  b不出现或多次"
egrep "^ab*c$" reg_expr_file


echo "输出 ^ab?c$  b出现一次或不出现"
egrep "^ab?c$" reg_expr_file

echo "输出 ^ab+c$ 出现一次或多次"
egrep "^ab+c$" reg_expr_file
                                 
echo "输出 ^a{3}c$ 正好出现3次"
egrep "^a{1,3}c$" reg_expr_file
                                
echo "输出 ^a[[:alnum:]]c$ 中间数字或字母"
egrep "^a[[:alnum:]]c$" reg_expr_file

echo "输出 ^a[[:digit:]]+*c$ 中间数字"
egrep "^a[[:digit:]]+*c$" reg_expr_file
                

echo "输出 ^a[[:upper:]]*c$ 中间大写"
egrep "^a[[:upper:]]c$" reg_expr_file




echo "filter IP"
egrep "^((25[0-5]|2[0-4][[:digit:]]|[[:digit:]][[:digit:]]?).){3}(25[0-4]|2[0-4][[:digit:]]|[[:digit:]][[:digit:]]?)$" reg_expr_file













