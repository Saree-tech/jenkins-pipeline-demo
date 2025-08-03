pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '🏗️ Building...'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Testing...'
            }
        }

        stage('Deploy with Docker') {
            steps {
                echo '🐳 Deploying Docker container...'
                sh '''
                    docker build -t myapp:latest .
                    docker stop myapp || true
                    docker rm myapp || true
                    docker run -d --name myapp -p 80:80 myapp:latest
                '''
            }
        }
    }

    post {
        success {
            slackSend channel: '#build-notifications', message: "✅ Build Passed: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
        }
        failure {
            slackSend channel: '#build-notifications', message: "❌ Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
        }
    }
}
