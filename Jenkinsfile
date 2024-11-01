pipeline{
    agent any
    tools {
        nodejs 'node' 
    }
    stages {
        stage("npm install") {
            steps {
                bat "npm install"
            }
        }

        stage("npm build") {
            steps {
                bat "npm run build"
            }
        }

        stage("Build Docker Image") {
            steps {
                script {
                    sh 'docker build -t jenkinsdockerapp:latest .'
                }
            }
        }
    }
       
}