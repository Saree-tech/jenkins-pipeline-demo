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

        stage('Deploy') {
            steps {
                echo '🚀 Deploying...'
            }
        }
    }

    post {
        success {
            sh '''
            curl -X POST -H 'Content-type: application/json' \
            --data '{"text":"✅ *Build Successful!*"}' \
            https://hooks.slack.com/services/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
            '''
        }
        failure {
            sh '''
            curl -X POST -H 'Content-type: application/json' \
            --data '{"text":"❌ *Build Failed!*"}' \
            https://hooks.slack.com/services/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
            '''
        }
    }
}
