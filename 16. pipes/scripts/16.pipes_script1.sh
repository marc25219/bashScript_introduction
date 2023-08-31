#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 31-08-2023
##
##  [DESCRIPTION]: It creates the message variable and export it. Then, it executes 
##                  the second script (that it gets the message variable).
####

MESSAGE="Hello world"

export MESSAGE

./16.pipes_script2.sh