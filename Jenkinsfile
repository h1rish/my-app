
pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'make check'
            }
        }
    }
    post {
        always {
            junit '**/target/*.xml'
        }
        failure {
            mail to: 'harish496a@gmail.com', subject: 'The Pipeline failed :('
        }
    }
}
