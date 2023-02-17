pipeline {
    agent any
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
                       withCredentials([string(credentialsId: 'dockerpass', variable: 'dockerpwd')]) {
                       bat 'echo $dockerpwd'
                       bat 'docker login -u mastermindj3 -p $dockerpwd'
                       }
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
