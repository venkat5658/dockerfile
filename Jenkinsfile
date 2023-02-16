pipeline {
  environment {
    imagename = "nginx"
    dockerImage = 'nginx:latest'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://https://github.com/venkat5658/dockerfile.git', branch: 'main'])
 
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build nginx
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 179625949269.dkr.ecr.ap-south-1.amazonaws.com') {
            dockerImage.docker tag nginx:latest 179625949269.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest
             dockerImage.docker push 179625949269.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest
          }
        }
      }
    }
    
  }
}
