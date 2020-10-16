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
                    if (currentBuild.result -1 == 'success') {
                        println ("hai")
                    }    
                }
            }    
            steps {
                sh ' git --version '
            }
        }
    }
}
                          
