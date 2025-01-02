pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t docker-jenkins-nginx-sample-app:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up'
            }
        }
    }
}