echo "1) Display Jobs"
echo "2) Build the job"
echo "3) Delete the job"
echo "4) Display the version"

echo "Please select the correct option"
read option

case $option in

	1) sh displayJobs.sh
	;;
    2) sh buildJob.sh
	;;
	3) sh deleteJob.sh
	;;
    4) sh version.sh
	;;
    *) echo "Please pass the correct input.."
	;;
	
esac	