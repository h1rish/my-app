pipeline {
  agent any
   
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
    stage (' deliver to docker hub ') {
      steps {
        withDockerRegistry(credentialsId: '8a342603-ad00-478a-a145-a71eb40265cf', url: 'https://hub.docker.com/repository/docker/harishchow') {
        
        sh ' docker push harishchow/myimage:1.0 '
        }
      }  
    }  
  }
} 
