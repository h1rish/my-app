pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mvn clean package'
      }
    }  
    stage('deploy war to tomcat') {
      steps {
        sshagent(['ad7d72c3-e236-4854-acb9-c538a2db135d']) {
          sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/hai/target/myweb-1.0.0.war ec2-user@172.31.83.27:/root/opt/tomcat8/webapps'
        }
      }
    }
        stage('build') {
            steps {
                sh'''
                    echo 'FROM debian:latest’ > Dockerfile
                    echo ‘CMD ["/bin/echo", "HELLO WORLD...."]' >> Dockerfile
                '''
                script {
                    docker.withRegistry('https://hub.docker.com/', 'harishchow') {
                        def image = docker.build('harishchow/ver:latest')
                        image.push()
                    }
                }
            }
        }
        stage('analyze') {
            steps {
                sh 'echo "docker.io/harishchow/ver:latest
} `pwd`/Dockerfile" > anchore_images'
                anchore name: 'anchore_images'
            }
        }
        stage('teardown') {
            steps {
                sh'''
                    for i in `cat anchore_images | awk '{print $1}'`;do docker rmi $i; done
                '''
            }
        }
  }  
}
