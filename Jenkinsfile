pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Maven 'clean install' command
                    sh 'mvn clean install'
                }
            }
        }
    }
}
