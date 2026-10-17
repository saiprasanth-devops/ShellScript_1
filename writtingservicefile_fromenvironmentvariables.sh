#!/bin/bash


foldername="/etc/system.d/system/"
filename="servicefile.service"

cd "${foldername}"
touch "$filename"
echo "$MONGO_SERVICEFILE" >> "${foldername}""${filename}
status=$(echo $?)  
echo "$status"