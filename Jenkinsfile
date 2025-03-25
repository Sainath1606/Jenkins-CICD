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
                  sh 'cd https://github.com/Sainath1606/Jenkins-CICD &&mvn clean package'
         }       
       } 
     }
  }
}
