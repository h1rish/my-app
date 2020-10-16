pipeline {
    agent any
    stages {
        stage('Example Build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Example Deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result== 'success'
                }
            }    
            steps {
                sh ' git --verssion '
            }
        }
    }
}
                          
