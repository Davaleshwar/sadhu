pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                sh 'https://github.com/Ravaliganigapeta/jenkins-s3.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
