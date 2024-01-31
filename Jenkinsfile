pipeline {
    agent any
    stages{
        stage('Code'){
            steps{
                git url: 'https://github.com/praveenlsingh/Jenkins-Assignment1.git', branch: 'master'
            }
        }
        
        stage('Build'){
            steps{
                sh 'docker build . -t my-apache-image:latest'
            }
        }
        stage('Test'){
            steps{
                echo "Testing"
            }
        }
        stage('Deploy'){
            steps{
                sh "docker run -dP my-apache-image:latest"
            }
        }
    }
}
