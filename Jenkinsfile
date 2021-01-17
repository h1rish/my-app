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
    stage('docker build') {
      steps {
        script{
          
          sh 'docker build . -t harishchow/hai:2.0'
          withCredentials([string(credentialsId: '123docker', variable: 'myvariable')]) {
            sh 'docker login -u harishchow -p $myvariable'
            sh 'docker push harishchow/hai:2.0'
        }
       }   
      }
    }
  }
}          
