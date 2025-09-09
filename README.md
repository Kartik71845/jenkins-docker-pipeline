Jenkins Docker Pipeline 🚀

This project shows how I automated the build and deployment of a simple Dockerized portfolio website using Jenkins pipelines.

📌 What this project does

Builds a Docker image using Nginx and serves a portfolio website (index.html)

Runs the container using Docker Compose

Automates everything with a Jenkins pipeline

Pushes the built image to Docker Hub

📂 What’s inside this repo

index.html → My portfolio page

dockerfile → Defines the Docker image with Nginx

docker-compose.yml → Runs the container on port 8081

Jenkinsfile → Automates build, run, and Docker Hub push

🔄 Jenkins Pipeline Stages

Start → Print starting message

Clone Code → Fetch code from my Docker Portfolio repo

Build & Run → Build image + run container using docker compose

Push to Docker Hub → Authenticate with dockerhub-creds and push image

🐳 Run locally (without Jenkins)
# Clone repo
git clone https://github.com/Kartik71845/jenkins-docker-pipeline.git
cd jenkins-docker-pipeline

# Build and start container
docker compose up -d --build


Now open 👉 http://localhost:8081

⚙️ Jenkins Setup

Jenkins must have Docker and Docker Compose installed

Add your Docker Hub credentials in Jenkins (ID: dockerhub-creds)

Create a pipeline job pointing to this repo

🎯 Why I built this

I wanted to practice CI/CD automation with Jenkins, so I built a simple project where Jenkins handles the full workflow — from fetching code, building a Docker image, running it, and finally pushing it to Docker Hub.
