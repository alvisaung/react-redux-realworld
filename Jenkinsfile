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
                sh 'docker run alvisaung/todo-app'
            }
        }
        stage("Deploying") {
            steps {
                sh './jenkins/deliver.sh'
            }
        }
    }
}
