#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 01-08-2023
##
##  [DESCRIPTION]: It reads one number (0 - MEN, 1 - WOMAN) and shows a message trough standard output.
##                 Moreover, "-e" and "-n" parameter is used in the echo command.
##
##  [ADDITIONAL]: echo -e [text]: It has different options and usages to do in the text, i.e.:
##                - \n --> breakline
##                - \t --> Tabulator space.
##                - \r --> Enter // carriage return (pointer at the beggining of the line)
##                - \\ --> Allows to show \ symbol. 
##                - \" --> Allows to show " symbol.
##                - \' --> Allows to show ' symbol.
##
##                echo -n [text]: It is used to avoid a breakline after showing the [text]
##
####

# "echo -n" it avoids to do a breakline, and it starts to read the number at the end of the echo message.
echo -n "Type: 0 - MEN // 1 - WOMAN, please: "
read number

# CASE STRUCTURE
case $number in
    0)  
        # "echo -e" allows to introduce '\n' in order to do a breakline
        echo -e "\nYou are a men."
        ;; # <-- Double ;; indicates a break;
    1)
        echo -e "\nYou are a woman."
        ;;
    *)
        echo -e "\nInvalid number."
        ;;
esac