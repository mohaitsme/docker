pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('mohaitsme')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t mohaitsme/docker .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker tag mohaitsme-img:1.01 mohaitsme/docker:1.01'
        sh 'docker push mohaitsme/docker'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
