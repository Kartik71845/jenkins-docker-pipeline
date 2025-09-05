pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('cloning') {
            steps {
                git url: "https://github.com/Kartik71845/Docker-Portfolio.git", branch: "main"
                echo 'cloning the code'
            }
        }
        stage('runnign the image') {
            steps {
                sh 'docker compose down || true && docker compose up -d --build'
                echo 'running the code'
            }
        }
    }
}
