pipeline {
    agent any
    tools {
       maven 'Maven'
    }
    stages{
        stage('npm install'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/microservice-ui']], extensions: [], userRemoteConfigs: [[credentialsId: '1e5856bd-bc08-48c6-ae95-759034743a48', url: 'https://github.com/jbali12/microservice.git']]])
                sh "npm install"
                sh "ng s --port 3000 --open"

            }
        }
        
        
        stage('build Docker Image'){
            steps{
                script {
                    sh 'docker build -t jbalialoui/microservice .'

                }
                
            }
        }
        
        stage('Push Docker Image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'jbalialoui', variable: 'dockerhubpwd')]) {
                        
                        sh 'docker login -u jbalialoui -p ${dockerhubpwd}'
                    }
                    
                    sh 'docker push jbalialoui/microservice'

                }
            }
        }
    }
}
