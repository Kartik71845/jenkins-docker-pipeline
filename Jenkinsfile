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
        stage('runnign the image') {
            steps {
                sh 'docker compose down || true && docker compose up -d --build'
                echo 'running the code'
            }
        }
    }
}
