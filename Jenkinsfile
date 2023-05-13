pipeline {
  agent { label "linux" }
  stages {
    stage("build") {
      steps {
        sh """ 
          docker build -t ola-unicamp.app .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run -rm ola-unicamp.app .
        """
      }
    }
  }
}
