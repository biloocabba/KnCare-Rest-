def builJar() {
    echo "building the application..."
    sh 'mvn package'
}

def builImage() {
    echo "building the application..."
    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER' )]) {
        sh 'docker build -t biloocabba/kncare-app:2.0 . '
        sh "echo $PASS | docker login -u $USER --password-stdin"
        sh 'docker push biloocabba/kncare-app:2.0 '
    }
}

def deployApp() {
    echo "building the application..."
    sh 'mvn package'
}