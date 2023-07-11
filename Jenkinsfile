pipeline {

    agent{
        docker {
            image 'khaliddinh/ansible'
        }
    }
    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'False'
    }
    stages {

        stage('Deploy Mysql container') {
           
            steps {
                withCredentials([file(credentialsId: 'ansible_key', variable: 'ansible')]) {
                    sh 'ls -la'
                    sh "cp \$ansible ansible_key"
                    sh 'ansible --version'
                    sh 'ls -la'
                    // sh 'cat config >> ./ansible.cfg '
                    sh 'ansible all -m shell -i hosts --private-key ansible_key -a "echo $HOSTNAME"'
                    // some block
            }
            }
        }
        
    }
    post {
        // Clean after build
        always {
            cleanWs()
        }
    }
}
