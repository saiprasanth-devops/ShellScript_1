#!/bin/bash


foldername="/etc/systemd/system/"
filename="servicefile.service"

cd "${foldername}"
touch "$filename"
echo "$MONGO_SERVICEFILE" >> "${foldername}""${filename}
status=$(echo $?)  
echo "$status"