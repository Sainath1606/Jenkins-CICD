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
     }
  }

