pipeline {
  environment {
    registry = "harishchow/hai" 
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
        
        
        sh 'docker build -t "$registry":"$BUILD_NUMBER" .'
          
      }
    }
    stage (' push to dockerhub ') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) { 
            
            sh 'docker push $registry:$BUILD_NUMBER'
          }
        }
      }  
    }  
  }
} 
