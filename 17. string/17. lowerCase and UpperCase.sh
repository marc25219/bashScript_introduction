#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 07-09-2023
##
##  [DESCRIPTION]: It manages the strings with lowerCase and UpperCase methods. 
####

echo -n "Enter your name: "
read name

echo -n "Enter your surname: "
read surname

# LOWERCASE METHOD:
echo -e "\nLowercase: ${name,,}"
echo -e "Lowercase: ${surname,,}"

# UPPERCASE METHOD:
echo -e "\nUppercase: ${name^^}"
echo -e "Uppercase: ${surname^^}"


# MIXING METHODS:
name="user"
surname="TEST"

echo -e "\nIt replaces \"aeiou\" lowercase to uppercase: ${name^^[aeiou]}"
echo -e "It replaces \"AEIOU\" uppercase to lowercase: ${surname,,[AEIOU]}"
