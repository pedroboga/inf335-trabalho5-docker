pipeline {
  agent any
  
  tools {
        dockerTool "docker"
    }
  
  stages {
    stage("Build") {
      steps {
        script {
          // Build the Docker image
          sh "docker build -t ola-unicamp.app ."
        }
      }
    }
    
    stage("Run") {
      steps {
        script {
          // Run the Docker container
          sh "docker run --rm ola-unicamp.app"
        }
      }
    }
  }
}
