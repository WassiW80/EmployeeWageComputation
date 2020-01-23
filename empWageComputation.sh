#!/bin/bash -x
echo "Welcome to Employee Wage"
#Constant
EMPLOYEE_WORKING_FULLTIME=1
EMPLOYEE_WORKING_PARTTIME=2
EMPLOYEE_RATE_PER_WAGE=20
MAXIMUM_HOURS_OF_WORKING=100
NUMBER_OF_WORKING_DAYS=20
#Variable
totalEmployeeHours=0
totalWorkingDays=0

function checkEmployeeWorkingHours() {
case $employeeCheck in
	$EMPLOYEE_WORKING_FULLTIME)
		employeeHours=8
		;;
	$EMPLOYEE_WORKING_PARTTIME)
		employeeHours=4
		;;
	*)
		employeeHours=0
		;;
esac
echo $employeeHours
}

while [[ $totalEmployeeHours -lt $MAXIMUM_HOURS_OF_WORKING && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	employeeCheck=$((RANDOM%3))
	employeeHours="$( checkEmployeeWorkingHours $employeeCheck )"
	totalEmployeeHours=$(($totalEmployeeHours+$employeeHours))
done
totalSalary=$(($totalEmployeeHours*$EMPLOYEE_RATE_PER_WAGE))

