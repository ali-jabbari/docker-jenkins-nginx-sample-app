pipeline {
    agent {
        docker {
            image 'docker:stable'
            args '--privileged -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

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
                sh 'docker compose down'
                sh 'docker compose up -d'
            }
        }
    }
}