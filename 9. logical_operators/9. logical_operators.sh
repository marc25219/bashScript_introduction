#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 01-08-2023
##
##  [TITLE]: Use IF conditionals with logical operators
##
##  [DESCRIPTION]: It reads the age through standard input. Then, it uses the conditionals
##                and logical operators to show different scenarios.
##
##  [ADDITIONAL]: Logic operators: ( ||, &&)
##
####

echo "Type your age, please: "
read age

# IF with AND logical operator.
echo
echo "1. IF clausule:"
if [ $age -ge 18 ] && [ $age -lt 65 ]
then
    echo "Yeah! You can get a job"
else 
    echo "Oh no! You can not get a job"
fi

# IF with AND logical operator (In the same clausule)
echo
echo "2. IF same clausule:"
if [[ $age -ge 18 && $age -lt 65 ]]
then
    echo "Yeah! You can get a job"
else 
    echo "Oh no! You can not get a job"
fi

# IF with OR logical operator.
echo
echo "3. IF same clausule:"
if [[ $age -lt 18 || $age -ge 65 ]]
then
    echo "Oh no! You can not get a job"
else 
    echo "Yeah! You can get a job"
fi

