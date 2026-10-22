#!/bin/bash


#1.
###############Add all the parameters to the script which are paseed in console#############

####It will return all the content which is given in the console###

# 54.224.179.112 | 172.31.41.250 | t3.micro | https://github.com/saiprasanth-devops/ShellScript_1.git
# [ ec2-user@ip-172-31-41-250 ~/ShellScript_1 ]$ sh Special_Variable.sh Hello Hello1 Hello2
# Enter the data and pull the given parameters from the console: Hello Hello1 Hello2


echo "Enter the data and pull the given parameters from the console: $@"


# outcome:
# Input from cmd :
# sh Special_Variable.sh Hello Hello1 Hello2
# outcome:
# Enter the data and pull the given parameters from the console: Hello Hello1 Hello2

#2.
########return the count which are passed in the console##############


echo "This will store the count of the of the parameters/variables passed $#"


# sh Special_Variable.sh Hello Hello1 Hello2
# outcome:
# echo "This will store the count of the of the parameters/variables passed 3
#3 is the count of the variables passed.



#3.
########return the first count which are passed in the console##############

echo "This will return the first count of the of the parameters/variables passed $1"

# sh Special_Variable.sh Hello Hello1 Hello2
# outcome:
# echo "This will return the first count of the of the parameters/variables passed Hello 
#Hello since the first one in variables passed.



#4.
########return the file name##############

echo "This will name of the file(.sh file) $0"

# sh Special_Variable.sh



#5.
########return the full path of the file##############

echo "This will return the full path of the file $(realpath $0)"

# sh Special_Variable.sh

#5.a
fullpath=$(realpath $0)
echo "$fullpath"


#6.
############to get the USER whi is running this script##############

echo "to get the user who is running the script $USER"

##outcome
#to get the user who is running the script ec2-user


#7.
###########to get the PWD#########
echo "to get the present working directory $PWD"

##outcome
#to get the present working directory /home/ec2-user/ShellScript_1



#8.
#############to get the $Home ##########

echo " to get the home of the user $HOME"

###outcome
# to get the home of the user /home/ec2-user



#8.
##########to get the PID (process management)######3

echo "to get the pid of the execution command: $$"


###outcome
#to get the pid of the execution command: 21922



#9.
####### to get the PID of the command running in background

sleep 10 &

echo "get the PID of the sllp which is running in the background $!"

wait $!

#Explanation: 
#1.The above sleep command will hold the execution for 10 seconds by default 
#2.Then we will get the PID using the $!
#3.for the wait $! this will wait until the sleep is completed

#outcome
#get the PID of the sllp which is running in the background 21925



#10.
#######to get the line number######3

echo "to get the line number use $LINENO"

#outcome
##to get the line number use 123


#11.
####to get the previous command status#####3

echo "get the previous command status $?"

##outcome
#get the previous command status 0


#11.
##total time taken to complete this script#####3

echo "total time taken to complete this script $SECONDS"

##outcome
#total time taken to complete this script 10
