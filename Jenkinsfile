pipeline {
    agent any

    stages {
        stage('Hi') {
            steps {
                echo 'Hi this is kartik'
            }
        }

        stage('cloning') {
            steps {
                git url: "https://github.com/Kartik71845/Docker-Portfolio.git", branch: "main"
                echo 'cloning the code'
            }
        }

        stage('running the image') {
            steps {
                sh 'docker compose down || true && docker compose up -d --build'
                echo 'running the code'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo "Preparing to push image to Docker Hub..."
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
                echo "Image successfully pushed to Docker Hub!"
            }
        }
    }
}
