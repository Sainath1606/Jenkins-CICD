echo "Displaying the jobs from Jenkins server..."
echo "------------------------------------------"

java -jar jenkins-cli.jar -s http://54.252.233.39:9980/ -auth mithuntechnologies:passw0rd -webSocket list-jobs
