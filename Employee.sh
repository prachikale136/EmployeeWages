echo "Welcome to Employee Wage computation program";

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=3;

for(( days=1; days<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));
		case $empCheck in 
			$isFullTime)
				empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
		esac

salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary+$salary));
done
