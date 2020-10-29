pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mvn clean deploy'
      }
    }
    stage(' upload war to nexus') {
      steps {
        nexusArtifactUploader artifacts: [
          [
          artifactId: 'myweb',
          classifier: '',
          file: '/var/lib/jenkins/workspace/hai/target/myweb-1.0.0.war', 
          type: 'war'
          ]
        ],
          credentialsId: '4aeda43e-569f-4599-8aa5-67b5be4e7e9e',
          groupId: 'in.javahome',
          nexusUrl: '172.31.67.171',
          nexusVersion: 'nexus3',
          protocol: 'http',
          repository: 'my-app',
          version: '1.0.0'  
      }
    }  
    
    stage('deploy war to tomcat') {
      steps {
        sshagent(['ad7d72c3-e236-4854-acb9-c538a2db135d']) {
          sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/hai/target/myweb-1.0.0.war ec2-user@18.207.214.210:/root/opt/tomcat8/webapps'
        }
      }
    }
  }  
}
