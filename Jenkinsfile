pipeline {
    agent any

    environment {
        IMAGE_NAME = "ecommerce-app"
    }

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/YOUR_USERNAME/ecommerce-devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop ecommerce-app || true
                docker rm ecommerce-app || true
                docker run -d -p 5000:5000 --name ecommerce-app $IMAGE_NAME
                '''
            }
        }
    }
}
