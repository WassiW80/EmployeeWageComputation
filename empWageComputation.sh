#!/bin/bash -x
echo "Welcome to Employee Wage"
EMPLOYEE_WORKING_FULLTIME=1
EMPLOYEE_WORKING_PARTTIME=2
EMPLOYEE_RATE_PER_WAGE=20
employeeCheck=$((RANDOM%3))
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
employeeSalary=$(($employeeHours*$EMPLOYEE_RATE_PER_WAGE))
