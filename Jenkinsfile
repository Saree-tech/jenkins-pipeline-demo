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
            echo '🎉 Build Succeeded! Sending Slack notification...'
            sh '''
                curl -X POST -H "Content-type: application/json" \
                --data '{"text":"✅ *Build Successful!* 🚀\\n*Job:* jenkins-pipeline-demo #${BUILD_NUMBER}\\n🔗 <${BUILD_URL}|View Build>"}' \
                https://hooks.slack.com/services/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
            '''
        }
        failure {
            echo '❌ Build Failed! Sending Slack notification...'
            sh '''
                curl -X POST -H "Content-type: application/json" \
                --data '{"text":"❌ *Build Failed!* 💥\\n*Job:* jenkins-pipeline-demo #${BUILD_NUMBER}\\n🔗 <${BUILD_URL}|View Build>"}' \
                https://hooks.slack.com/services/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
            '''
        }
    }
}
