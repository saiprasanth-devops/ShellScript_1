#!/bin/bash


path=$(pwd)
statuscode=$(echo $?)
echo "$PWD staus of the pwd command"
echo "$? staus of the pwd command"

echo "$statuscode"
if [ $statuscode -eq 0 ]
then 
echo "{$path} this is the path of pwd"
fi
