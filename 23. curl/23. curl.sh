#! /bin/bash
#
####
## 
##  [AUTHOR]: Marc Ciruelos Santos
##
##  [DATE]: 11-09-2023
##
##  [DESCRIPTION]: It uses the curl function to:
##                  - It redirects json HTTP to file.json.
##                  - It redirects an JPG image to image.jpg
##                  - It shows the headers information of a HTTP request.
##
####

# CASE1: It makes an http request and redirects the json output to the file
echo "CASE:1 JSON example is saved in the \"users.json\" file"
curl https://jsonplaceholder.org/users > users.json

# CASE2: It makes an http request and redirects the image.jpg output to the image
echo -e "\nCASE:2 JSON example is saved in the \"image.jpg\" file"
curl https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_117KB_JPG.jpg > image.jpg

# CASE3: It makes an http request and show the headers
echo -e "\nCASE:3 Headers"
echo -e "CASE:3.1 JSON example"
curl -I https://jsonplaceholder.org/users
echo -e "\nCASE:3.2 JPG example"
curl -I https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_117KB_JPG.jpg