#!/bin/bash

LastTime=""

Time_Start=$(Date +%s)

End_Time=$(Date +%s)

Total_Time=$((Time_Start-End_Time))

echo "$Total_Time"

LastTime=$Total_Time

echo "$LastTime"

