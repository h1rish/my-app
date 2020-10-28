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
            file: '/var/lib/jenkins/workspace/hai/target/myweb-0.0.1',
            type: 'war'
          ]
        ],
          credentialsId: '4aeda43e-569f-4599-8aa5-67b5be4e7e9e',
          groupId: 'in.javahome',
          nexusUrl: '172.31.87.39', 
          nexusVersion: 'nexus3',
          protocol: 'http', 
          repository: 'my-app-release', 
          version: '1.0.0'
      }
    }  
  }  
}
