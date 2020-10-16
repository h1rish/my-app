pipeline {
  agent any
  stages {
    stage('exampe') {
      input {
        message " shall we continue "
        ok "ok"
        submitter "harish"
        parameters {
          string(name: 'hai' , defaultValue: 'harish' , description: 'welcome message')
        }
      }
      steps {
        echo " hello ${params.hai} "
      }
    }
  }
}  
      
