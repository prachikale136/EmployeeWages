echo "Welcome to Employee Wage computation program"
#!/bin/bash -x
isPresent=1;
randomChecks=$((RANDOM%2));
if [ $isPresent -eq $randomChecks ]
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr));
	echo $salary;
else
	 echo $salary=0;
fi

