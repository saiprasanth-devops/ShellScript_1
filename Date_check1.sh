#!/bin/bash

LastTime=""

Time_Start=$(date +%s)

sleep 10

End_Time=$(date +%s)

Total_Time=$((Time_Start-End_Time))

echo "$Total_Time"

LastTime=$Total_Time

echo "$LastTime"

