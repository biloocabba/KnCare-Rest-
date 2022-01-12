pipeline{
    agent any
    
    stages {
        stage("build") {
            steps{
                sh "mvn clean package"
            }
            
        }
        stage("Deploy") {
            steps{
                echo "I am running deployment"
            }
            
        }
        
    }
    
}
