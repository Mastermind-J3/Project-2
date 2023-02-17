pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-cred-jatin')
	}
        stages{
            stage('Jatin - Build docker image'){
                steps{
                    script{
                        sh 'docker build -t mastermindj3/jatin_python_script .'
                    }
                }
            }
            stage('Jatin - Login to DockerHub'){
                steps{
                    script{
                       sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                    }
                }
            }
            stage('Jatin - Push image to Hub'){
                steps{
                    script{
                        sh 'docker push mastermindj3/jatin_python_script'
                    }
                }
            }
        }
}
