pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                bat "pip install -r requirements.txt"
            }
        }

        stage('Build') {
            steps {
                bat "python -m py_compile app.py"
            }
        }

        stage('Run Tests') {
            steps {
                bat "pytest -q"
            }
        }
    }
}
