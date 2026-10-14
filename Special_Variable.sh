#!/bin/bash

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
