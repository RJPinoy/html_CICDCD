pipeline {
    agent {
        label "${AGENT}"
    }

    stages {
        stage('Continuous Integration') {
            steps {
                git branch: 'main', url: 'https://github.com/fredericBui/html_CICDCD.git'
            }
        }
        stage('Continuous Delivery') {
            steps {
                sh 'docker build . -t beauty'
            }
        }
    }
}
