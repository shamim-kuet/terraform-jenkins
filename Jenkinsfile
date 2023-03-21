pipeline {
    agent any

    stages {

        stage('S3 - create bucket') {
            steps {
                sh "ansible-playbook s3-bucket.yml "
            }
        }

        stage('terraform init and apply - dev') {
            steps {
                sh returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform init "
                sh "ansible-playbook terraform.yml"
            }
        }

        stage('terraform init and apply - prod') {
            steps {
                sh returnStatus: true, script: 'terraform workspace new prod'
                sh "terraform init "
                sh "ansible-playbook terraform.yml -e app_env=prod"
            }
        }
    }
}
