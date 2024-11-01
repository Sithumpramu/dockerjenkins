pipeline{
    agent any
       stages{
            tools {
        nodejs 'node' 
    }
    stages {
        stage("npm install") {
            steps {
                sh "npm install"
            }
        }

        stage("npm build") {
            steps {
                sh "npm run build"
            }
        }
    }
       }
}