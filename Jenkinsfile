pipeline {
    agent any

    stages {

        stage('Checkout from GitHub') {
            steps {
                echo "Code cloned successfully."
            }
        }

        stage('Install Dependencies') {
            steps {
                sh "python3 -m pip install -r requirements.txt"
            }
        }

        stage('Build') {
            steps {
                sh "python3 -m py_compile app.py"
            }
        }

        stage('Run Tests') {
            steps {
                sh "pytest -q"
            }
        }
    }

    post {
        success {
            echo "Build and tests succeeded!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
