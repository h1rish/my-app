pipeline {
    agent any
    stages {
        stage ('running parallel') {
            failfast true
            parallel {
                stage('stage1) {
                      steps {
                          echo " hello harry "
                      }
                }      
                stage('stage2') {
                    steps {
                        echo "hai"
                    }    
                }
             }
        }
    }                  
}                   
                          
