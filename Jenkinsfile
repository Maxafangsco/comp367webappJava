pipeline {
    agent any

    tools {
        // Specify the Maven version configured in the Global Tool Configuration
        maven 'maven3'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Use Maven to clean and install
                    sh 'mvn clean install'
                }
            }
        }
    }
}
