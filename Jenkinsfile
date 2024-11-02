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

// Docker compose really needs if there are multiple containers for a app. (baceknd, frontend and db)            
        stage("Build Docker Image") {
            steps {
                bat 'docker build -t jenkinsdockerapp:latest .'
                // if using docker compose 
                // bat 'docker-compose build'
            }
        }

        stage('deploy') {
            steps {
                bat 'docker run -d -p 8081:80 jenkinsdockerapp:latest' 
                // if using docker compose 
                //  bat 'docker-compose up -d'
                }
        }
    }
       
}