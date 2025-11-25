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
                sh "pip install --user -r requirements.txt"
            }
        }

        stage('Build') {
            steps {
                sh "python -m py_compile app.py"
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
