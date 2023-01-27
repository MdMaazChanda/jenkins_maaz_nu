pipeline{
    agent any
    parameters {
        choice(name: 'NAME', choices: ['One','Two','Three'], description: 'PickName')
        choice(name: 'LASTNAME', choices: ['Maaz','Nusaiba','true'], description: 'PickLastName')
        choice(name: 'SHOW', choices: ['true','false'], description: 'PickShow')
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo "This is Build Stage executing artifacts.sh"'
                sh "bash script2.sh ${params.NAME} ${params.LASTNAME} ${params.SHOW}"
            }
        }
        stage('Test') {
            steps {
                sh 'echo "running test"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deployment stage success"'
            }
        }
    }
    post {
        always {
            echo 'Deleting Workspace'
            deleteDir()
        }
    }
}
