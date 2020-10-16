pipeline {
  agent any
  triggers {
    cron('* * * * *')
  }  
  parameters  {     
    string(name: 'hai' , defaultValue: 'harish' , description: 'welcoming')
  }
  stages {
    stage('example') {
      steps {
        echo " hello ${params.hai} "
      }
    }
  }
}  
