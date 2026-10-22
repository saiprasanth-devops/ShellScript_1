#!/bin/bash



check_package(){

    echo "$1"
    echo "$2"

    echo "how it derice $@"


    systemctl status "$1"



}



check_package "nginx" "mysql"