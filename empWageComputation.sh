#!/bin/bash -x
echo "Welcome to Employee Wage"
EMPLOYEE_IS_PRESENT=1
EMPLOYEE_RATE_PER_WAGE=20
employeeCheck=$((RANDOM%2))
if [ $employeeCheck -eq $EMPLOYEE_IS_PRESENT ]
then
	empHours=8
	employeeSalary=$(($empHours*$EMPLOYEE_RATE_PER_WAGE))
else
	employeeSalary=0
fi
