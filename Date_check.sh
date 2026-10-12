#!/bin/bash




Time_Start=$(date +%s)

echo "execution started"

sleep 10

End_Time=$(date +%s)
echo "execution ended"

Between_Time=$((Time_Start-End_Time))