#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 07-09-2023
##
##  [DESCRIPTION]: It uses declare as a global constant. 
##
##  [ADDITIONAL]: declare [options] [name[=value]] [name[=value]]
##                  - i --> It is used to declare an integer variable.
##                  - a --> It is used to declare an indexed array.
##                  - A --> It is used to declare an associative array.
##                  - l --> It is used to declare a variable to store all lowercase letters.
##                  - u --> It is used to declare a variable to store all uppercase letters.
##                  - p --> It is used to print the attributes and options of the variables.
##                  - x --> It is used to export the variable.
##                  - f --> It is used to declare a bash function.
##                  - F --> It is used to print the name of the function and attributes.
##                  - n --> It is used to declare a variable that references another variable.
####

# -l indicates "lowerCase"
declare -l address=mail@mail.com
echo address: $address

# -r indicates "only read"
declare -r mainPath=/etc/passwd
echo mainPath: $mainPath