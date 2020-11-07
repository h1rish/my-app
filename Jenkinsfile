pipeline {
  environment {
    registry = "harishchow/myimage" 
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage(' docker build ') {
      steps {
        sh 'docker build -t myimage:1.0 .'
   
      }
    }
    stage (' push to dockerhub ') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) { 
              dockerImage.push() 
          }
        }
      }  
    }  
  }
} 
