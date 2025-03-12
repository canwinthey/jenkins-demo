pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/canwinthey/jenkins-demo.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('capture') {
            steps {
                archiveArtifacts '**/target/*.jar'  // Updated path for Maven build artifacts
                junit '**/target/surefire-reports/*.xml'  // Updated test report location
                // Configure Jacoco for code coverage
                // jacoco(execPattern: '**/target/jacoco.exec')
            }
        }
    }
    post {
        always {
            cleanWs()
        }
        success {
            echo 'Build successful!'
        }
        unstable {
            echo 'Build unstable.'
        }
        failure {
            echo 'Build failed!'
        }
    }
}