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
count=0
declare -A dailyWage
function getWorkHr()
{
  number=$((RANDOM%3))
 case $number in
 	$isFullTime)   emphr=8 ;;
 	$isPartTime)   emphr=4 ;;
	*)	       emphr=0 ;;
 esac
return $emphr
}

function dwage()
{
  local wage=$1
       eachwage=$(($WagePerHr*$wage))
return $eachwage
}

while (( (($numberOfWorkingHr<$limithr)) && (($day<$totalworkingday)) ))
do
	getWorkHr
	  emphr=$?
       dwage $emphr
          dailywagevalue=$?
     dailyWage["day $day"]=$dailywagevalue

    numberOfWorkingHr=$(($numberOfWorkingHr+$emphr))
 ((day++))
 salary=$(($WagePerHr*$emphr))
 totalsalary=$(($totalsalary+$salary))

done
echo "TotalSalary: $totalsalary"
echo "each day wage: ${dailyWage[@]}"
echo "each day wage: ${!dailyWage[@]}"

echo "total Number of wage: ${#dailyWage[@]}"

