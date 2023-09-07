#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 07-09-2023
##
##  [DESCRIPTION]: It concatenates three inputs as string readed by standard input.
####

echo -n "Enter your name: "
read name

echo -n "Enter your surname: "
read surname

echo -n "Enter your age: "
read age

echo -e "\nMy name is $name $surname and I am $age years old."
