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

 version=$("{$appname} -v")

 status_versioncode=$(echo $?)

 if [ "$status_versioncode" -eq 0 ]
 then
 dnf remove "$appname" -y
fi
dnf search "$appname"     |  tee -a /home/ec2-user/${appname}.log
dnf list available "$appname" |  tee -a /home/ec2-user/${appname}.log
dnf module list "$appname" |  tee -a /home/ec2-user/${appname}.log
dnf install "$appname" -y |  tee -a /home/ec2-user/${appname}.log
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
echo "----------------------- enter if "$exit_code"
then
systemctl start "$appname"
systemctl enable "$appname"
nginxstatus=$(systemctl status "$appname")
echo "$nginxstatus"
else 
echo "${appname} is not installed"
fi








