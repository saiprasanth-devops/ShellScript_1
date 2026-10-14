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
