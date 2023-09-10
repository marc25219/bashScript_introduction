#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 10-09-2023
##
##  [DESCRIPTION]: It uses the -d option to manage a directory. This program do some
##                 steps to create a directory.
##
##  [ADDITIONAL]: A flowchart is attached in this folder.
####

echo -n "Type the name of the new directory: "
read directory

if [ -d $directory ]
then
    echo -e "\nThe directory is already created."
else
    mkdir $directory
    echo -ne "\nThe directory is successfully created. "
fi

echo -en "Then, do you want to add a new file? ([Y] - yes, [N] - no): "
read decision

while [[ ${decision^^} != "Y" && ${decision^^} != "N" ]]
do
    echo -n "Invalid character. Please, type [Y] or [N]: "
    read decision
done

if [ ${decision^^} == "Y" ]
then
    cd $directory
    ./../22.file.sh
else 
    echo -ne "\nFinally, do you want remove this directory? ([Y] - yes, [N] - no): "
    read decision

    while [[ ${decision^^} != "Y" && ${decision^^} != "N" ]]
    do
        echo -n "Invalid character. Please, type [Y] or [N]: "
        read decision
    done

    if [ $decision == "Y" ]
    then    
        rm -r $directory
        echo "   - The directory \"$directory\" was removed."
    else
        echo -n "    - Ok, so the directory \"$directory\" is stored in:"; pwd 
    fi
fi