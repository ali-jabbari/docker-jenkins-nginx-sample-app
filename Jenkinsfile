pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t docker-jenkins-nginx-sample-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 9000:3000 docker-jenkins-nginx-sample-app'
            }
        }
    }
}