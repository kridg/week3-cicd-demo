pipeline {
    agent any
    environment {
        APP_VERSION = '1.0.0'
    }
    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Build') {
            steps { sh 'chmod +x app.sh && ./app.sh' }
        }
        stage('Test') {
            steps { sh 'chmod +x test.sh && ./test.sh' }
        }
        stage('Archive') {
            steps { archiveArtifacts artifacts: 'app.sh', fingerprint: true }
        }
    }
    post {
        success { echo "Build #${BUILD_NUMBER} succeeded!" }
        failure { echo "Build #${BUILD_NUMBER} FAILED." }
        always  { cleanWs() }
    }
}
