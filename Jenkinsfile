
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
        echo '🎉 Build Succeeded! Sending Slack notification with bot...'
        sh '''
        curl -X POST https://slack.com/api/chat.postMessage \
        -H "Authorization: Bearer xoxb-9296116316884-9297163632677-NFlMw2sYV68NWFcBGUe2EEQx" \
        -H "Content-type: application/json" \
        --data '{"channel":"C0987U64147","text":":white_check_mark: Build Success - ${JOB_NAME} #${BUILD_NUMBER}"}'
        '''
    }
}
}
