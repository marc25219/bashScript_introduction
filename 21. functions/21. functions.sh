#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 10-09-2023
##
##  [DESCRIPTION]: It uses functions to structure the code. In addition, 
##                 the local variable is introduced in the last example.
##
####

# CASE 1: Hello world method
function sayHello(){
    echo "Hello"
}

echo "CASE_1: Hello world function:"
sayHello

# CASE 2: introduceYourself method using parameters.
function introduceYourself(){
    message="Hello I $1 and I am $2 years old"
    echo $message
}

echo -e "\nCASE_2: introduceYourself function:"
introduceYourself "Marc Ciruelos" 28

# CASE 3: errorByDefault method using local variables.
function errorByDefault(){
    local message="Error in the execution program:"
    echo -n $message
}
echo -e "\nCASE_3: errorByDefault method using local variables:"
errorByDefault
message="The text is invalid"
echo $message
