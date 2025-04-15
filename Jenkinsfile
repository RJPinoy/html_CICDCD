pipeline {
    agent {
        label "${AGENT}"
    }

    stages {
        stage("Continuous Integration / Intégration Continue") {
            steps {
                git branch: "main", url: "https://github.com/fredericBui/html_CICDCD.git"
            }
        }
        stage("Continuous Delivery / Livraison Continue") {
            steps {
                sh "docker build . -t ${DOCKERHUB_USERNAME}/html_cicdcd"
                sh "docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKER_PASSWORD}"
                sh "docker push ${DOCKERHUB_USERNAME}/html_cicdcd"
            }
        }
    }
}
