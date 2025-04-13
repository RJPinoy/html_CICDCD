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
    }
}
