def getDockerTag(){
  def tag = sh script: 'git rev-parse HEAD', returnStdout:true
  return tag
}
pipeline {
  agent any
  stages {
    stage('maven compilaton and packaging') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('build image') {
      steps {
        script{
          sh 'docker build -t harishchow\hai:Dockertag'
          withCredentials([string(credentialsId: '12', variable: 'dockerpassword')]) {
            sh 'docker login -u harishchow -p $dockerpassword'
            sh 'docker push harishchow\hai:Dockertag'
          }
        }
      }
    }  
  }
}  
