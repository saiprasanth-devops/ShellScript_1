#!/bin/bash


user_id=$(id -u)

echo "$user_id"

if [ "$user_id" -eq 0 ];
then 
echo "${user_id} this is the id for the user"
fi


#dnf module list nginx > /home/ec2-user/log.txt



add_lof(){

dnf module list nginx 
dnf serach nginx
dnf list available nginx

} > /home/ec2-user/log.txt



add_lof





