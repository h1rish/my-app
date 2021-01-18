def getDockerTag(){
  def tag= sh script: 'git rev-parse HEAD', returnStdout:true
  return tag
}  
pipeline {
  agent any
  environment {
    docker-tag= getDockerTag()
  }  
  
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
    stage('next job'){
      steps{
        
      }
    }  
   
  }
}          
