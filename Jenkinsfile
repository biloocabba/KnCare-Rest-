pipeline{
    agent any
    tools {
        mvn "maven-8.8.4"
    }
    stages {
        stage("build") {
            steps{
                sh "mvn clean package"
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }

            }

        }

     }

}