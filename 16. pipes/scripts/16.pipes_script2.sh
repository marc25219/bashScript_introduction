#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 31-08-2023
##
##  [DESCRIPTION]: This script is executed in the first script. Then, it receives
##                 the exported MESSAGE variable, and it uses the pipe to count
##                 the characters number and it shows the number in the standard 
##                 ouput.
####

echo $MESSAGE | wc -m