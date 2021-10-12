pipeline {
    agent {
        docker {
            image 'sitapati/docker-alpine-python-node'
            args '-p 3000:3000'
        }
    }
    environment {
        HOME="."
    }
    stages {
        stage("Install dependeicies") {
            steps {
                sh 'npm install'
                sh 'npm rebuild'
                sh "npm run build"
            }
        }
        stage("Deploying") {
            steps {
                sh "npm start"
            }
        }
    }
}
