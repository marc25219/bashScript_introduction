#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 10-09-2023
##
##  [DESCRIPTION]: It uses an array to manage a brands list. In this case, there are different 
##                 ways to manage the array elements.
##
##  [ADDITIONAL]: Unset variable is used to remove an element by index, but be careful, it is not 
##                designed for use as mutable data structures. 
##
##                  - Note that if you do this, and one or more elements is removed, and the indices 
##                    will no longer be a continuous sequence of integers.
##
##                  - If gaps are a problem, then you need to rebuild the array to fill the gaps:
##
##                      Example: 
##                               for i in "${!array[@]}"; do
##                                   new_array+=( "${array[i]}" )
##                               done
##                               array=("${new_array[@]}")
##                               unset new_array
##
####

# Declare brands list.
brands=( "Apple" "Microsoft" "Linux" "Oracle")
echo "Brands list: ${brands[*]}"


# Remove an element by index (4)
echo -e "\nRemove an element of the list by index (4):"
echo "  - Before:" ${brands[*]}
unset brands[3]     # /!\ --> READ ADDITIONAL INFORMATION
echo "  - After: " ${brands[*]}

# Remove an element by name
echo -e "\nRemove an element of the list by name (Microsoft):"
echo "  - Before:" ${brands[*]}
delete=Microsoft
brands=( ${brands[@]/$delete} )
echo "  - After: " ${brands[*]}


# Add an element at the end of the array (1 case)
echo -e "\nAdd an element at the end of the array (1 case):"
echo "  - Before:" ${brands[*]}
brands+=( "AMD" )
echo "  - After: " ${brands[*]}

# Add an element at the end of the array (2 case)
echo -e "\nAdd an element at the end of the array (2 case):"
echo "  - Before:" ${brands[*]}
brands[${#brands[*]}]="Logitech"
echo "  - After: " ${brands[*]}


# Replace an existent element by index (0)
echo -e "\nReplace an element in the list by index (0):"
echo "  - Before:" ${brands[*]}
brands[0]="Intel"
echo "  - After: " ${brands[*]}