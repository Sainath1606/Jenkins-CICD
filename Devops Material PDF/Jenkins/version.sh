echo "Displaying the Jenkins server version..."
echo "----------------------------------------"

jenkinsURL=`grep jenkinsURL credentials.properties  | cut -d '=' -f2`
jenkinsUserName=`grep jenkinsUserName credentials.properties  | cut -d '=' -f2`
jenkinsPassword=`grep jenkinsPassword credentials.properties  | cut -d '=' -f2`

java -jar jenkins-cli.jar -s $jenkinsURL  -auth  $jenkinsUserName:$jenkinsPassword -webSocket version

