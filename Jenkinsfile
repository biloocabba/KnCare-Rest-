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
                sh "java -jar /target/*.jar"
            }
            
        }
        
    }
    
}
