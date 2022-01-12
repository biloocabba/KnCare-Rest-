def gv 
pipeline{
    agent any
    tools {
        maven "Maven-3.8.4"
    }

    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage("build") {
            steps{
                script {
                    gv.buildJar()
                }
            }
            
        }
        stage("build image") {
            steps{
                script {
                    gv.builImage()
                    
                }
            }
            
        }
        stage("Deploy ") {
            steps{
                script {
                    gv.deployApp()
                }
            }

        }
    }        
          
    
}
