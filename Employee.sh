#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalWorkHr=0;
totalWorkingDays=0;

function getWorkingHrs() {
	case $1 in
                $IS_FULL_TIME)
                        workHrs=8
                        ;;
                $IS_PART_TIME)
                        workHrs=4
                        ;;
                *)
                        workHrs=0;
                        ;;
        esac
	echo $workHrs;

}
function empDailywage() {
	local workHrs=$1
	wage=$(($workHrs+$EMP_RATE_PER_HR))
	echo $wage

}

while [[ $totalWorkHrs -lt $MAX_HRS_IN_MONTH && 
              $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

do
	(( totalWorkingDays++ ))
	 workHrs="$( getWorkingHrs $((RANDOM%3)) )"
	totalWorkHr=$(($totalWorkHr*$workHrs));

done
totalSalary=$(($totalWorkHr*$EMP_RATE_PER_HR));
echo "Daily Wage " $(empDailyWage[0])

