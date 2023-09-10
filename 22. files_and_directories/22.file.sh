#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 10-09-2023
##
##  [DESCRIPTION]: It uses the -f option to manage a file. This program do some
##                 steps to create a file.
##
##  [ADDITIONAL]: A flowchart is attached in this folder.
####

echo -n "Type the name of the new file (remember the extension): "
read file

# -f == file option
if [ -f $file ]
then
    echo -e "\nThe file is already created."
else
    touch $file
    echo -ne "\nThe file is successfully created. "
fi

echo -en "Then, do you want to add another new file? ([Y] - yes, [N] - no): "
read decision

while [[ ${decision^^} != "Y" && ${decision^^} != "N" ]]
do
    echo -n "Invalid character. Please, type [Y] or [N]: "
    read decision
done

if [ ${decision^^} == "Y" ]
then
    ./22.file.sh
else 
    echo -ne "\nFinally, do you want remove this file? ([Y] - yes, [N] - no): "
    read decision

    while [[ ${decision^^} != "Y" && ${decision^^} != "N" ]]
    do
        echo -n "Invalid character. Please, type [Y] or [N]: "
        read decision
    done

    if [ $decision == "Y" ]
    then    
        rm $file
        echo "   - The file \"$file\" was removed."
    else
        echo -n "    - Ok, so the file \"$file\" is stored in:"; pwd 
    fi
fi