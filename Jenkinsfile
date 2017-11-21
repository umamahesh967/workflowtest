pipeline {
    agent any
        DB_ENGINE    = 'sqlite'
    stages {
 
        stage('Build'){
            steps {
                sh 'printenv'
                sh 'mvn clean package'
 
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose -f docker-compose.yml up -d --build --remove-orphans -e DB_ENGINE  = sqlite'
            }
        }
    }
}
