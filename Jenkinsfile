pipeline {
  agent any
  stages {
	stage('Docker') {
      		steps {
        		sh 'Docker --version'
      }
	}
    stage('Build') {
      steps {
        sh 'docker build -t mohanitsme .'
      }
    }
	stage('Exec') {
      steps {
        sh 'docker container run -dt --name mani mohanitsme sh'
      }
    }
  }
}
