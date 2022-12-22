#!/bin/bash
is_present=$((RANDOM%2));
salary_per_hour=20;
working_hour=0;
case $is_present in 
		0)
				echo "employee is apsent ";
				working_hour=0;

		;;
	
		1)
				echo "employee is present ";
				working_hour=8;
				 
		;;
		

esac


ttl_salary=$(($salary_per_hour * $working_hour));



echo  " total salary of employee $ttl_salary ";