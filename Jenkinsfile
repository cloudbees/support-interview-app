pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    currentBuild.displayName = "Milestone 3"
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
