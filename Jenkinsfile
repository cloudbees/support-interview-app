pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                script {
                    currentBuild.displayName = "Milestone 2"
                }
                checkout scm
            }
        }
        stage ('Build and test'){
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
