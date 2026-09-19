pipeline {
    agent any

    stages {
        stage('code') {
            steps {
                echo 'This is my code stage'
                git branch: 'main', url: 'https://github.com/swamynath12/Ho-race.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Creating an image'
                sh 'docker build -t race:v2 .'
            }
        }
        stage('containeraization') {
            steps {
                echo 'creating a container'
                sh 'docker run -d --name RACE-Container -p 1112:80 race:v1'
            }
        }
    }
}
