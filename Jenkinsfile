pipeline {
    agent any

    stages {

        stage('Pull Code') {
            steps {
                echo "Pulling code from GitHub..."
                // Jenkins automatically clones the repo for you
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Build') {
            steps {
                echo "No build needed for Python. Validating code..."
                sh 'python -m py_compile app.py'
            }
        }

        stage('Run Automated Tests') {
            steps {
                echo "Running tests..."
                sh 'pytest -q'
            }
        }
    }

    post {
        success {
            echo "Build + Tests Successful!"
        }
        failure {
            echo "Pipeline Failed!"
        }
    }
}
