pipeline{
    agent any 
    parameters {
        string(name: 'NAME', choices: ['One', 'Two', 'Three'], description: 'Pick NAME')
	string(name: 'LASTNAME', choices: ['HELLO', 'MOTO', 'FELLO'], description: 'Pick LASTNAME')
	string(name: 'SHOW', choices: ['true', 'false'], description: 'Pick SHOW')
    }
    stages {
	stage('Build') {
	    steps {
	        sh 'echo "Build Stage executing shell script"'
		sh 'bash first_jenkins.sh "${params.NAME}" "${params.LASTNAME}" "${params.SHOW}"'
            }
        }
	stage('Test') {
	    steps {
		sh 'echo "Running scripts in QA"'
	    }
        }
	stage('Deploy') {
       	    steps {
	        sh 'echo "Deploying in k8s"'
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
