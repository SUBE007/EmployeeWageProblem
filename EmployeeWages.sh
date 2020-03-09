#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "
number=$((RANDOM%2))
isFullTime=1
WagePerHr=20


if(($number==$isFullTime))
then
        emphr=8
else
        emphr=0
fi
salary=$(($WagePerHr*$emphr))
echo "Salary: $salary"



