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
    }
       
}