pipeline {
  agent any
  stages {
    options {
      buildDiscarder(logRotator(numToKeepStr:'2'))
    }  
    stage('maven compilaton and packaging') {
      steps {
        sh 'mvn clean deploy'
      }
    }
  }
}          
