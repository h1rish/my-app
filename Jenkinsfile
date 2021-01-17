pipeline {
  agent any
  stages {
    stage('maven compilaton and packaging') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('docker') {
       steps{
         build job: 'job2'
       }
    }              
  }
}          
