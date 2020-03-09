#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "
number=$((RANDOM%3))
isFullTime=2
isPartTime=1
WagePerHr=20
if(($number==$isFullTime))
 then
        emphr=8
elif(($number==$isPartTime))
 then
        emphr=4
else
        emphr=0
fi
salary=$(($WagePerHr*$emphr))
echo "Salary: $salary"



