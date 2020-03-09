#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "

isFullTime=2
isPartTime=1
WagePerHr=20
totalsal=0
totalworkingday=20
for((i=0;i<$totalworkingday;i++))
do
number=$((RANDOM%3))
case $number in
 $isFullTime)	emphr=8 ;;
 $isPartTime)   emphr=4 ;;
           *)	emphr=0 ;;
esac
salary=$(($WagePerHr*$emphr))
totalsalary=$(($totalsalary+$salary))
done
echo "TotalSalary: $totalsalary"



