pipeline {
  environment {
    registry = "harishchow/myimage"
    registrycredential = "dockerlogin"
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
        sh 'docker build -t myimage:1.0 .'
   
      }
    }
    stage (' deliver to dockerhub ') {
      steps {
        withDockerRegistry([ credentialsId: "registrycredential", url: ""]) {
          sh 'docker push harishchow/myimage:1.0'
        }
      }  
    }  
  }
} 
