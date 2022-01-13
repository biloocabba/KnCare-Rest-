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
                    
                    def dockerCmd = 'sudo docker run -p 8080:8080 -d --init biloocabba/kncare-app:1.0'
                    sshagent(['ec2-server-key']) {
                        sh "ssh -o StrictHostKeyChecking=no ec2-user@18.184.112.174"
                        sh 'docker ps -f name=biloocabba/kncare-app:1.0 -q | xargs --no-run-if-empty docker container stop'
                        sh 'docker container ls -a -fname=biloocabba/kncare-app:1.0 -q | xargs -r docker container rm'
                        sh "${dockerCmd}"
                    
                    }
                }
            }

        }
    }        
          
    
}
