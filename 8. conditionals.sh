#! /bin/bash
#
####
## 
## [AUTHOR]: Marc Ciruelos Santos
##
## [DATE]: 01-08-2023
##
## [TITLE]: Use IF conditionals
##
## [DESCRIPTION]: It reads the age through standard input. Then, it uses the conditionals
##                to show different scenarios. 
##
## [ADDITIONAL]: Operators: (-eq, -ge, -le, -lt, -gt, -ne (not-equal))
####

echo "Type your age, please: "
read age

# IF clausule
echo
echo "1. IF clausule"
if [ $age -ge 10 ]
then
    echo "Your age is greater or equal than 10"
fi

echo
echo "2. IF-Else clausule"
# IF-Else clausule
if [ $age -ge 10 ]
then
    echo "Your age is greater or equal than 10"
else 
    echo "Your age is less than 10"
fi

echo
echo "3. IF-Else + ELIF clausule"
# IF-Else + ELIF clausule
if [ $age -ge 18 ] 
then
    echo "You are an adult"
elif [ $age -eq 17 ] 
then
    echo "You are close to be an adult"
else 
    echo "Your are a child"
fi

echo
echo "4. IF-Else + ELIF clausule // same line sintax"
# IF-Else + ELIF clausule // same line sintax
if [ $age -ge 18 ]; then
    echo "You are an adult"
elif [ $age -eq 17 ]; then
    echo "You are close to be an adult"
else 
    echo "Your are a child"
fi

echo
echo "5. IF-Else "current" sintax "
# IF-Else "current" sintax 
if (( $age >= 10)) 
then
    echo "Your age is greater or equal than 10"
else 
    echo "Your age is less than 10"
fi