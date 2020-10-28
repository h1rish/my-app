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
            file: 'target/my-app-1.0.0.jar',
            type: 'jar'
          ]
        ],
          credentialsId: 'a2814139-5446-40bc-801f-fc6caaab5c96',
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
