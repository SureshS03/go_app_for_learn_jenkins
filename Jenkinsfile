pipeline{
    agent{
        node{
            label 'build_go_app'
        }
    }
    triggers {
        pollSCM 'H/5 * * * *'
    }
    stages{
        stage('Clone'){
            steps{
                sh '''
                echo "clone will automatically done by SCM poll"
                '''
            }
        }
        stage('Build'){
            steps{
                sh '''
                ls -a
                echo "building app"
                go run main.go
                '''
            }
        }
        stage('Test') {
            steps{
                sh '''
                echo "testing"
                '''
            }
        }
        stage('Deploy'){
            steps{
                sh '''
                echo "deply to cloud"
                '''
            }
        }
    }
}
