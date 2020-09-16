pipeline {
  agent {
    any
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying.... 123'
            }
        }
    }

  }
  environment {
    aa = 'ee'
    adsf = 'ee'
  }
}
