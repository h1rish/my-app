pipeline {
  
  agent any
  stages {
    stage('sonar status check'){
      steps{
        scripts {
          withSonarQubeEnv('sonarserver'){
            sh "mvn sonar:sonar"
          }
        }
      }
    }
    stage("Quality Gate"){
      steps {
        timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
          def qg = WaitForQualityGate(happy) {   // Reuse taskId previously collected by withSonarQubeEnv
            steps {
              if (qg.status != 'OK') {
                error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
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
}    
    
