pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mvn package'
      }
    }
    stage(' upload war to nexus') {
      steps {
        nexusArtifactUploader artifacts:[
          [
            artifactId: 'myweb', 
            classifier: '',
            file: '/var/lib/jenkins/workspace/hai/target/myweb-0.0.1.war',
            type: 'war'
          ]
        ],
          credentialsId: 'nexus3',
          groupId: 'in.javahome',
          nexusUrl: '172.31.67.171', 
          nexusVersion: 'nexus3',
          protocol: 'http', 
          repository: 'my-app-release', 
          version: '1.0.0'
      }
    }  
  }  
}
