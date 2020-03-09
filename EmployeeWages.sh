#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "

isFullTime=2
isPartTime=1
WagePerHr=20
totalsal=0
totalworkingday=20
limithr=100
numberOfWorkingHr=0
day=1
while (( (($numberOfWorkingHr<$limithr)) && (($day<$totalworkingday)) ))
do
number=$((RANDOM%3))
case $number in
 $isFullTime)	emphr=8 ;;
 $isPartTime)   emphr=4 ;;
           *)	emphr=0 ;;
esac
numberOfWorkingHr=$(($numberOfWorkingHr+$emphr))
((day++))
salary=$(($WagePerHr*$emphr))
totalsalary=$(($totalsalary+$salary))
done
echo "TotalSalary: $totalsalary"



