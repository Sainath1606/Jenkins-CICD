pipeline {
     agent any
     stages {
     
         stage ("git checkout"){
           steps {
                sh "echo passed"
            }
          }
         stage ('build') {
             steps {
                  sh 'ls -ltr'
                  sh 'mvn clean package'
         }       
       } 
       stage ('deploy to tomcat') {
          steps {
                def jarFile = findFiles(glob: 'target/*.jar')[0].path
                    echo "Deploying ${jarFile} to Tomcat"

                    sh """
                    curl -u ${TOMCAT_USER}:${TOMCAT_PASSWORD} -T ${jarFile} ${TOMCAT_URL}/manager/text/deploy?path=/your-app&update=true
                    """
               
          }
            
       }
     }
  }

