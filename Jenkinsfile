pipeline {
    agent any
    tools{
        maven 'maven_3_5_0'
    }
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
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u mastermindj3 -p ${dockerhubpwd}'
                   }
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