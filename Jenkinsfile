pipeline {
  agent any
  stages {
    stage('maven compilaton and packaging') {
      steps {
        sh 'mvn clean package'
      }
    }
    
    stage('docker build') {
      steps {
        sh 'docker build . -t harishchow/hai:2.0'
        withCredentials([string(credentialsId: '123docker', variable: 'myvariable')]) {
          sh 'docker login -u harishchow -p $myvariable'
          sh 'docker push harishchow/hai:2.0'
        }
      }
    }
    stage('docker') {
       steps{
         build job: 'job2'
       }
    }
  }
}          
