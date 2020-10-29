pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mvn clean package'
      }
    }  
    stage('deploy war to tomcat') {
      steps {
        sshagent(['ad7d72c3-e236-4854-acb9-c538a2db135d']) {
          sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/hai/target/myweb-1.0.0.war ec2-user@172.31.83.27:/root/opt/tomcat8/webapps'
        }
      }
    }
  }  
}
