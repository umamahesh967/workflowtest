pipeline {
    agent any

    stages {
 
        stage('Build'){
            steps {
                sh 'printenv'
                sh 'mvn clean package'
 
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose  run -e DB_ENGINE=sqlite'
            }
        }
    }
}
