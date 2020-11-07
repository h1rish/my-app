pipeline {
  environment {
    registry = "harishchow/myimage" 
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage ('maven biuld and compile') {
      steps {
        sh 'mvn package'
      }
    }  
    stage(' docker build ') {
      steps {
        sh 'docker build -t myimage:1.0 .'
   
      }
    }
    stage (' push to dockerhub ') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) { 
            sh 'docker tag myimage:1.0 harishchow/myimage:1.0'
            sh 'docker push harishchow/myimage:1.0'
          }
        }
      }  
    }  
  }
} 
