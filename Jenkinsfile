pipeline {
  environment {
    registry = "nileshkardile831/incedo"
    registryCredential = 'docker-hub-credentials'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Checkout') {
      steps {
	git 'https://github.com/nileshkardile831/incedo-repo.git'
      }
    }
    stage('Docker Build') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Docker Push') {
      steps{
        script {
#          docker.withRegistry( '', registryCredential ) {
	   docker.withRegistry(https://116127484844.dkr.ecr.us-east-2.amazonaws.com){
            dockerImage.push()
          }
        }
      }
    }
  }
}
