pipeline {
  agent any
  tools {
    maven 'Apache Maven 3.5.4'
  }  
  stages {
    stage('build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage(' docker build ') {
      steps {
        sh 'docker build -t myimage:1.0 .'
   
      }
    }
  }
} 
