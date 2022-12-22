salary_per_hour=20;
working_hour=0;
month_sal=0;
total_working_hour=0;

day=1;

while [[ $day -le 20 && $total_working_hour -lt 100 ]] 
do

	is_present=$((RANDOM%3));
	case $is_present in 
			0)
					echo "employee is apsent ";
					working_hour=0;
	
			;;
		
			1)
					echo "employee is present ";
					working_hour=8;
				 	
			;;
			2)
					echo "employee as part time";

					working_hour=4;
			;;
	
	esac
	total_working_hour=$(($total_working_hour + $working_hour))
	echo " $total_working_hour "
	
	

	ttl_salary=$(($salary_per_hour * $working_hour));
	
	echo  " total salary of employee $ttl_salary ";
	
	
	month_sal=$(($month_sal + $ttl_salary));
	
	((day++));

done

echo  " total salary of employee in month $month_sal ";