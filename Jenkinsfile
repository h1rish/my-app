pipeline {
  agent any
  stages {
    stage('example') {
      #input {
       # message " passing some value "
       # ok "ok"
       # submitter "harry"
        parameters {
          string(name: 'hai' , defaultValue: 'harish' , description: 'welcoming')
        }
      # }
      steps {
        echo " hello ${hai} "
      }
    }
  }
}  
