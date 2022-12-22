is_prent=$((RANDOM%3));
sal_hour=20;
working_hour=0;
case $is_prent in 
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