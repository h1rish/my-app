def getDockerTag(){
  def tag= sh script: 'git rev-parse HEAD', returnStdout:true
  return tag
}  
pipeline {
  agent any
  environment {
    Docker_tag = getDockerTag()
  }  
  
  options {
      buildDiscarder(logRotator(numToKeepStr:'1'))
  } 
  stages {
    stage('parallel stage is running') {
      failFast true
      parallel {
        stage('maven compilaton and packaging') {
          steps {
            sh 'mvn package -D skiptests'
            sh 'mvn clean install'
          }
        }
    stage('next job'){
      steps{
        script{
          
          sh 'docker build . -t harishchow/hai:Docker_tag'
          withCredentials([string(credentialsId: '123docker', variable: 'myvariable')]) {
            sh 'docker login -u harishchow -p $myvariable'
            sh 'docker push harishchow/hai:Docker_tag'
          }
        }   
        
      }
    }  
    stage('building another job2'){
      steps{
        build job: 'job2'
        build job: 'job3'
      }
    }
      }
    }
  }
}  
