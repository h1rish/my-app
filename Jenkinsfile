pipeline {
  environment {
    registry = "harishchow"
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
    stage (' deliver to docker hub ') {
      steps {
        withDockerRegistry([ credentialsId: "$registrycredential", url: " "]) {
        
        sh ' docker push harishchow/myimage:1.0 '
        }
      }  
    }  
  }
} 
