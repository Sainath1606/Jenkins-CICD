echo "Deleting    the Job in Jenkins server..."
echo "---------------------------------------"

echo "Give the input as a Job name which you want to delete.."
read jobName

java -jar jenkins-cli.jar -s http://54.252.233.39:9980/ -auth mithuntechnologies:passw0rd -webSocket delete-job $jobName