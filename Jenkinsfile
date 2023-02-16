pipeline {
    agent any

    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/venkat5658/dockerfile.git'
            }
        }
        
        stage('Dockerfile') {
            steps {
                echo "Dockerfile true"
                
               
            }
        }
      
       
    }
}
