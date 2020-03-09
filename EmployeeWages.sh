#!/bin/bash -x
echo "========Welcome to employee wage calculation========= "
number=$((RANDOM%2))

if(($number==1))
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
