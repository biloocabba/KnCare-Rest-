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
                    ssh 'ps -afx | grep sleep | awk '{print $1}' | xargs kill -9'
                    def dockerCmd = 'sudo docker run -p 8080:8080 -d --init biloocabba/kncare-app:1.0'
                    sshagent(['ec2-server-key']) {
                        sh "ssh -o StrictHostKeyChecking=no ec2-user@18.184.112.174 ${dockerCmd}"
                    
                    }
                }
            }

        }
    }        
          
    
}
