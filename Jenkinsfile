pipeline {
    agent any
    tools {
        maven 'maven3'
    }

    environment {
        DOCKER_IMAGE = "maxafangscodev/maven-java-webapp:latest"
    }

       stages {
           stage('Docker Login') {
            steps {
                withCredentials([string(credentialsId: 'credentialID_DockerHubPWD', variable: 'DOCKER_HUB_TOKEN')]) {
                    sh 'docker login -u maxafangscodev -p ${DOCKER_HUB_TOKEN}'
                }
            }
        }
        stage('Checkout') {
             steps {
                echo 'Cloning repo...'
                git branch: 'main', url: 'https://github.com/Maxafangsco/comp367webappJava.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                echo 'Building project...'
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Docker Push') {
            steps {
                sh "docker push ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        always {
            sh 'docker logout'
        }
    }
}
