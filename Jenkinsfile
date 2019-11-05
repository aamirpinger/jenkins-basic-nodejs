pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''sh """
                # rm \'jenkins-basic-nodejs\' -r || true
                # git clone https://github.com/aamirpinger/jenkins-basic-nodejs.git
                # cd jenkins-basic-nodejs
                docker build -t ${APP} .
                """'''
      }
    }
    stage('deploy') {
      steps {
        sh '''sh """
                docker rm ${APP} --force || true
                docker run -d --name ${APP} -p 3000:3000 ${APP}
                """'''
      }
    }
  }
  environment {
    APP = 'ap-jenkins-basic-nodejs'
  }
}