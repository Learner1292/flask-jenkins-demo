pipeline {
    agent {
        docker {
            image 'python:3.10'
        }
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Learner1292/flask-jenkins-demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest'
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed.'
        }
    }
}
