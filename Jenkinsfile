pipeline {
  agent any
  
  tools {
        dockerTool "docker"
    }
  
  stages {
    stage("Install Docker") {
      steps {
        script {
          // Install Docker using command
          sh """
            # Add Docker repository GPG key
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

            # Add Docker repository
            sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

            # Update package list
            sudo apt-get update

            # Install Docker
            sudo apt-get install -y docker-ce docker-ce-cli containerd.io
          """
        }
      }
    }
    
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
