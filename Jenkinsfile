pipeline {
  environment {
    registry = "harishchow"
    registrycredentialId = "dockerlogin"
    dockerImage = ''
  }
  agent any
   
  stages {
    stage('build') {
      steps {
        sh 'mvn package'
      }
    }
    stage(' docker build ') {
      steps {
        sh 'docker build -t "$registry":"$BUILD_NUMBER" .'
   
      }
    }
    stage (' deliver to dockerhub ') {
      steps {
        withDockerRegistry([ credentialsId: "$registrycredential", url: ""]) {
          sh 'docker push $registry":"$BUILD_NUMBER'
        }
      }  
    }  
  }
} 
