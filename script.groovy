def buildJar() {
    echo "building the application..."
    sh 'mvn package'
}
return this

def buildImage() {
    echo "building the application..."
    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASS', usernameVariable: 'USER' )]) {
        sh 'docker build -t biloocabba/kncare-app:4.0 .'
        sh "echo $PASS | docker login -u $USER --password-stdin"
        sh 'docker push biloocabba/kncare-app:4.0'
    }
}
return this

def deployApp() {
    echo "building the application..."
    sh 'mvn package'
}
return this
