#!/bin/bash




path=$(pwd)
statuscode=$(echo $?)
echo "$PWD status of the pwd command"
echo "$? status of the pwd command"

echo "$statuscode"
if [ "$statuscode" -eq 0 ]
then 
echo "${path} this is the path of pwd"
fi






# /home/ec2-user/ShellScript_1 staus of the pwd command
# 0 staus of the pwd command
# 0
# {/home/ec2-user/ShellScript_1} this is the path of pwd
