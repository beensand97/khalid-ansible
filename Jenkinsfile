pipeline {

    agent{
        docker {
            alwaysPull true
            image 'khaliddinh/ansible'
        }
    }
    stages {

        stage('Deploy Mysql container') {
            steps {
                sh 'ls -la '
                sh 'mkdir .ssh'
                sh 'ssh-keygen -b 2048 -t rsa -f .ssh/demo -q -N "" '
                sh 'cp ansible_key .ssh/ansible_key'
                sh 'chmod 400 ansible_key'
                sh 'ls -la .ssh'
                sh 'ansible --version '
                sh 'ansible all -m shell -a "echo $HOME" '
            }
        }
        
    }
}
