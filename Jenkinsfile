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
            }
        }
        stage("Deploying") {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                 sh './jenkins/Deploy.sh'
            }
        }
    }
}
