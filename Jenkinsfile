pipeline{
    agent any
    tools {
        maven "Maven-3.8.4"
    }

    stages {
        stage("build") {
            steps{
                script {
                    sh "mvn clean package"
                }
            }
            
        }
        stage("build image") {
            steps{
                script {
                    echo "building the docker image"
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER' )]) {
                        sh 'docker build -t biloocabba/kncare-app:2.0 . '
                        sh "echo $PASS | docker login -u $USER --password-stdin"
                        sh 'docker push biloocabba/kncare-app:2.0 '
                    }
                    
                }
            }
            
        }
        stage("Deploy ") {
            steps{
                script {
                    echo "Deploy the image-app"
                }
            }
          
    
}
