#!/bin/bash


####Everything in shell script is string########


#1.Arithmetic(addition)

var1=10
var2=20

total=$(($var1+$var2))

echo "$total"

##output == 30


#2.  using the adding with string 
name1=20
name2=20
name3=hello

total1=$(($name1+$name2+$name3))

echo "$total1"


## outcome 
## name3 will be considered as 0 since if we are using the (()) the compiler will understand it is adding
## and will consider the name3 as 0

