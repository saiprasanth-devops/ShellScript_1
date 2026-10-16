#!/bin/bash


validate(){


    echo "Data is present and can be retrived using the $*"
}

validate "Hello" "Hello2"


exit_code=
user_id=$(id -u)
echo "$user_id"
appname=$1
if [ "$user_id" -eq 0 ]
then 
echo "the user is root access and the id is $user_id"
exit_code=$(echo $?)
else 
echo "this is not the root user please proceed with the root user"
exit 1
fi


appinfo(){


dnf search "$appname"
dnf list available "$appname"
dnf module list "$appname"
dnf install "$appname"
}  >> /home/ec2-user/${appname}.log

systemctl status "$appname"
exit_code=$(echo $?)
if [ "$exit_code" -ne 0 ]
then
appinfo
else
echo "${appname} is already present"
exit 1
fi


exit_code=$(echo $?)
if [ $exit_code -eq 0 ]
then 
nginxstatus=$(systemctl status nginx)
echo "$nginxstatus"
else 
echo "${appname} is not installed"
fi








