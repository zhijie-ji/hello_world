pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'pip3 install flask'
            }
        }
        stage('deploy') {
            steps {
                sh 'python3 hello.py '
            }

        }
    }
}

