pipeline {
    agent any

    environment {
        SLACK_WEBHOOK_URL = 'https://hooks.slack.com/services/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'
    }

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
            echo '🎉 Build Succeeded! Sending Slack notification...'
            sh """
                curl -X POST -H 'Content-type: application/json' \
                --data '{\"text\":\"✅ *Build Successful!* 🚀\\n*Job:* ${env.JOB_NAME} #${env.BUILD_NUMBER}\\n🔗 <${env.BUILD_URL}|View Build>\"}' \
                "${SLACK_WEBHOOK_URL}"
            """
        }

        failure {
            echo '❌ Build Failed! Sending Slack notification...'
            sh """
                curl -X POST -H 'Content-type: application/json' \
                --data '{\"text\":\"❌ *Build Failed!* 😞\\n*Job:* ${env.JOB_NAME} #${env.BUILD_NUMBER}\\n🔗 <${env.BUILD_URL}|View Build>\"}' \
                "${SLACK_WEBHOOK_URL}"
            """
        }
    }
}
