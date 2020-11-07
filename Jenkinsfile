pipeline {
  environment {
    registry = "harishchow/myimage"
    credential = "dockerhub"
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
        withDockerRegistry([ credentialsId: "credential", url: ""]) {
          sh 'docker tag myimage:1.0 harishchow/myimage:1.0'
          sh 'docker push harishchow/myimage:1.0'
        }
      }  
    }  
  }
} 
