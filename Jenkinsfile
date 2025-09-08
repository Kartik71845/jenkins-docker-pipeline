pipeline {
    agent any

    stages {
        stage('Start') {
            steps {
                echo 'Starting Jenkins pipeline for Docker project'
            }
        }

        stage('Clone Code') {
            steps {
                git url: "https://github.com/Kartik71845/Docker-Portfolio.git", branch: "main"
                echo 'Code cloned from GitHub repository'
            }
        }

        stage('Build and Run') {
            steps {
                sh 'docker compose down || true && docker compose up -d --build'
                echo 'Docker image built and container is running'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo 'Uploading Docker image to Docker Hub'
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {
                    sh """
                        echo "$PASS" | docker login -u "$USER" --password-stdin
                        docker tag nginx_web $USER/nginx_web:latest
                        docker push $USER/nginx_web:latest
                    """
                }
                echo 'Docker image successfully pushed'
            }
        }
    }
}
