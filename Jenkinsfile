pipeline{
    agent{
        node{
            label 'build_go_app'
        }
    }
    stages{
        stage('Clone'){
            steps{
                sh '''
                git clone https://github.com/SureshS03/go_app_for_learn_jenkins.git
                '''
            }
        }
        stage('Build'){
            steps{
                sh '''
                cd go_app_for_learn_jenkins
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