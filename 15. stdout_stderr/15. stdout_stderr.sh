#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 31-08-2023
##
##  [DESCRIPTION]: It redirects the output and error standard to a file.  
####

# It's a right comand, then in this case the message it's redirected to the file usigin the 1st channel (output).
ls -a 1> fileSuccess.txt 

# It's an invalid command, then in this case the error message it's redirected to the file using 2nd channel (error).
ls -125 2> fileError.txt 

# In this case, it is handled the two scenarios, both (success and failed) cases are redirected. 
# Obviously, this command shouldn't fail. 
ls -a 1> fileSuccess.txt 2> fileError.txt 

# In this case, both cases (succes and failed) are saved in the same file. Redirects 2nd channel to the 1st parameter.
ls -a > fileOutput.txt 2>&1 

# Finally, the same as previously, but it not "choosing" the cannel to be redirected, all of them will be saved in the same file.
ls -a >& fileOutput.txt