pipeline {
    agent any
    tools {
       maven 'Maven'
    }
    stages{
        stage('build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/product-service']], extensions: [], userRemoteConfigs: [[credentialsId: '1e5856bd-bc08-48c6-ae95-759034743a48', url: 'https://github.com/jbali12/microservice.git']]])                
                sh "mvn clean install"
                

            }
        }
        
        
        stage('build Docker Image'){
            steps{
                script {
                    sh 'docker build -t jbalialoui/product-service .'

                }
                
            }
        }
        
        stage('Push Docker Image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'jbalialoui', variable: 'dockerhubpwd')]) {
                        
                        sh 'docker login -u jbalialoui -p ${dockerhubpwd}'
                    }
                    
                    sh 'docker push jbalialoui/product-service'

                }
            }
        }
    }
}
