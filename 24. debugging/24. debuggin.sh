#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 11-09-2023
##
##  [DESCRIPTION]: It uses the debug tool.
##
##  [ADDITIONAL]: There are three ways to set the debug mode in a file: 
##                  1. Command line: "bash -x debugging.sh"
##                  2. Header: "#! /bin/bash -x"
##                  3. Breakpoints in the code: "set -x" and "set +x"
####

echo "Type your age, please: "
read age

set -x # Debug mode starts here (breakpoint).

    echo -e "\n1. IF clausule:"
    if [ $age -ge 18 ] && [ $age -lt 65 ]
    then
        echo "Yeah! You can get a job"
    else 
        echo "Oh no! You can not get a job"
    fi

set +x # Debug mode ends here (breakpoint).
