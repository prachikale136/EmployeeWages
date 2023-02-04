echo "Welcome to Employee Wage computation program"


#!/bin/bash -x
isPresent=1;
randomChecks=$((RANDOM%2));
if [ $isPresent -eq $randomChecks ]
then
	echo "Employee is present";
else
	echo "Employee is absent";
fi

