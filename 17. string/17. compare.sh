#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 07-09-2023
##
##  [DESCRIPTION]: It compares two strings readed by standard input.
####

echo -n "Insert your email account: "
read firstTry

echo -n "Insert your email acount again, please: "
read secondTry

if [ $firstTry == $secondTry ]
then
    echo -e "\nGreat! The accounts are the same! --> \"$firstTry\""
else
    echo -e "\nOh no! The accounts are not matching!"
fi