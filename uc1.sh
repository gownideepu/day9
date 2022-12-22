sal_hour=20;
working_hour=0;
month_sal=0;

for ((day=1; day<=20; day++))
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

	ttl_salary=$(($sal_hour * $working_hour));
	
	echo  " total salary of employee $ttl_salary ";
	
	month_sal=$(($month_sal + $ttl_salary));

done


echo  " total salary of employee in month $month_sal ";