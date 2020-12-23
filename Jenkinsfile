pipeline {
  
  agent any
  stages {
    stage('quality gate status check'){
      steps{
        scripts {
          withSonarQubeEnv('sonarserver'){
            sh "mvn sonar:sonar"
          }
          timeout(time: 1, unit: 'HOURS') {
            def qg = WaitForQualitygtes(happy)
            if (qg.status!= "ok") {
              error "pipeline aborted due to qualitygate failure: ${qg.status}"
            }
          } 
        }
      }
    }
     stage ('maven biuld and compile') {
      steps {
        sh 'mvn package'
      }
    }
} 
