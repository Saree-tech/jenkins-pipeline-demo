pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '🏗️ Building...'
                // Your build steps go here
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Testing...'
                // Your test steps go here
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying...'
                // Your deploy steps go here
            }
        }
    }

    post {
        success {
            echo '🎉 Build Succeeded! Sending Slack notification...'
            sh '''
                curl -X POST -H "Content-type: application/json" \
                --data '{"text":"✅ *Build Successful!* 🚀"}' \
                https://hooks.slack.com/services/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
            '''
        }
        failure {
            echo '❌ Build Failed! Sending Slack alert...'
            sh '''
                curl -X POST -H "Content-type: application/json" \
                --data '{"text":"❌ *Build Failed!* Please check Jenkins."}' \
                https://hooks.slack.com/services/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
            '''
        }
    }
}
