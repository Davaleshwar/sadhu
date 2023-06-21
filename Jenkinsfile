pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'Github Navjit', url: 'https://github.com/Navjit-Kaur-TX/tfjen'
            }
        }
        stage('Terraform Init') {
            steps {
                sh "terraform init -backend-config='access_key=AKIAR2ZHFOWGLLNFLANL' -backend-config='secret_key='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"
            }
        }
        stage('Terraform Action') {
            steps {
                input(message: 'Click "proceed" to approve the above Terraform Plan')
                sh(
                    label:  'Terraform Apply',
                    script: 'terraform ${action} --auto-approve'
                )
                //sh "terraform ${action} --auto-approve"   
            }
        }
    }
}
