#!/bin/bash -x
echo "Welcome to Employee Wage"
EMPLOYEE_WORKING_FULLTIME=1
EMPLOYEE_WORKING_PARTTIME=2
EMPLOYEE_RATE_PER_WAGE=20
employeeCheck=$((RANDOM%3))
if [ $employeeCheck -eq $EMPLOYEE_WORKING_FULLTIME ]
then
	employeeHours=8
elif [ $employeeCheck -eq $EMPLOYEE_WORKING_PARTTIME ]
then
	employeeHours=4
else
	employeeHours=0
fi
employeeSalary=$(($employeeHours*$EMPLOYEE_RATE_PER_WAGE))
