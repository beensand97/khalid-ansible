pipeline {

    agent{
        docker {
            image 'khaliddinh/ansible'
        }
    }
    stages {

        stage('Deploy Mysql container') {
           
            steps {
                withCredentials([file(credentialsId: 'ansible_key', variable: 'ansible')]) {
                    sh 'ls -la'
                    sh "cp \$ansible ansible_key"
                    sh 'ansible --version'
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
