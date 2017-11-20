pipeline {
    agent any
    stages {
 
        stage('Build'){
            steps {
                sh 'mvn clean package'
                sh 'mvn spring-boot:run'
 
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose -f docker-compose.yml up -d'
            }
        }
    }
}
