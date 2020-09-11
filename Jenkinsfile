
pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh 'mvn package'
            }
        }
        stage('Test') {
            steps {
                sh 'make check || true'
                junit '**/target/*.xml'
            }
        }    
    }
}
