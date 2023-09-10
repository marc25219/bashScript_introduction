#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 10-09-2023
##
##  [DESCRIPTION]: It uses an array to manage a brands list. In this case, 
##                 there are different ways to show the array elements.
##
####

# Declare brands list.
brands=( "Apple" "Microsoft" "Linux" "Oracle")
echo "Brands list: ${brands[*]}"

# Show first element.
echo "Show first element: $brands"

# Show all elements.
echo -e "\nShow all element using \"\${brands[*]}\": ${brands[*]}"
echo "Show all element using \"\${brands[@]}\": ${brands[@]}"

# Show element by index.
echo -e "\nShow 1st Brand: ${brands[0]}"
echo "Show 3rd Brand: ${brands[2]}"

# Show all indexes
echo -e "\nShow all indexes using \"\${!brands[*]}\": ${!brands[*]}"
echo "Show all indexes using \"\${!brands[@]}\": ${!brands[@]}"

# Show the lenght of the array
echo -e "\nShow brands list lenght using \"\${#brands[*]}\": ${#brands[*]}"
echo "Show brands list lenght using \"\${#brands[@]}\": ${#brands[@]}"

# Show last element
lastElement=(${#brands[*]}-1)
echo -e "\nShow the last brand of the list" ${brands[$lastElement]}

# Show all elements using for
echo -e "\nShow the all brands using a loop (for):"
for brand in ${brands[*]}
do
    echo " - $brand"
done

