#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 07-09-2023
##
##  [DESCRIPTION]: It manages numbers using two different expression.
##
##  [ADDITIONAL]: Bash not allows float numbers, only integers. 
####

echo -n "Insert you first number "
read x

echo -n "Insert your second number: "
read y

# SECOND EXPRESSION
echo -e "\n First expression: $(( x + y))"
echo ADD: $(( x + y))
echo SUB: $(( x - y))
echo MUL: $(( x * y))
echo DIV: $(( x / y))
echo RES: $(( x % y))

# SECOND EXPRESSION (expr): /!\ Scape the "*"
echo -e "\n Second expression (expr): $(( x + y))"
echo ADD: $(expr $x + $y)
echo SUB: $(expr $x - $y)
echo MUL: $(expr $x \* $y)
echo DIV: $(expr $x / $y)
echo RES: $(expr $x % $y)

