#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "
number=$((RANDOM%3))
isFullTime=2
isPartTime=1
WagePerHr=20
case $number in
 $isFullTime)	emphr=8 ;;
 $isPartTime)   emphr=4 ;;
           *)	emphr=0 ;;
esac
salary=$(($WagePerHr*$emphr))
echo "Salary: $salary"



