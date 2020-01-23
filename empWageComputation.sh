#!/bin/bash -x
echo "Welcome to Employee Wage"
EMPLOYEE_IS_PRESENT=1
employeeCheck=$((RANDOM%2))
if [ $employeeCheck -eq $EMPLOYEE_IS_PRESENT ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
