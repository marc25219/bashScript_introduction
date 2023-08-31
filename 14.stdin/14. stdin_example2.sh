#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 31-08-2023
##
##  [DESCRIPTION]: It reads the file content from the first parameter and it shows it.
##                     e.g.: ./stdin_example2.sh parameter1.txt
####

# read == scanf() == cin
while read line
do
    echo $line
done < "${1:-/dev/stdin}"

