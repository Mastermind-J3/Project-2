pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-cred-jatin')
	}
        stages{
            stage('Jatin - Build docker image'){
                steps{
                    script{
                        bat 'docker build -t mastermindj3/jatin_python_script .'
                    }
                }
            }
            stage('Jatin - Login to DockerHub'){
                steps{
                    script{
                       //withCredentials([string(credentialsId: 'dockerpass', variable: 'dockerpwd')]) {
                       //bat 'docker login -u mastermindj3 -p $dockerpwd'
                       //bat 'docker login -u mastermindj3 -p J3@docker'
                       //}
                       sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                    }
                }
            }
            stage('Jatin - Push image to Hub'){
                steps{
                    script{
                        bat 'docker push mastermindj3/jatin_python_script'
                    }
                }
            }
        }
}
