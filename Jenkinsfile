pipeline {
  agent any
  
  options {
      buildDiscarder(logRotator(numToKeepStr:'2'))
  } 
  stages {
     
    stage('maven compilaton and packaging') {
      steps {
        sh 'mvn package -D skiptests'
        sh 'mvn clean install'
      }
    }
  }
}          
