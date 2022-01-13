def gv 
pipeline{
    agent any
    tools {
        maven "maven-3.8.4"
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
            steps {
                script {
                    gv.buildJar()
                }
            }
            
        }
        stage("build image") {
            steps {
                script {
                    gv.buildImage()
                    
                }
            }
            
        }
        stage("Deploy ") {
            steps{
                script {
                    
                    def dockerCmd = 'docker run -p 8080:8080 -d  biloocabba/kncare-app:1.0'
                    //def dockerStop = 'docker stop $(docker ps -a -q)'
                    sshagent(['ec2-server-key']) {
                        sh "ssh -o StrictHostKeyChecking=no ec2-user@3.65.14.219"
                        //sh 'docker kill $(docker ps -q)'
                        sh "${dockerCmd}"
                        
                    
                    }
                }
            }

        }
    }        
          
    
}
