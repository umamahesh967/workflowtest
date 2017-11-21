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
                sh 'docker-compose -f docker-compose.yml up -d -e DB_ENGINE=sqlite --build --remove-orphans '
            }
        }
    }
}
