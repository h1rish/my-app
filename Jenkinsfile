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
                    (currentBuild.result -1) = previousBuild.result
                }
            }    
            steps {
                sh ' git --version '
                println 'previousBuild.result'
            }
        }
    }
}
                          
