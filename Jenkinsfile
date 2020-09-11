
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
                junit 'cd /var/lib/jenkins/workspace/happy/target/*.jar'
            }
        }    
    }
}
