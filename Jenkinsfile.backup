#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
//import com.acceleratedskillup.*   
def util = new com.acceleratedskillup.Calculator()
util.repo = 'docker-dd'
util.dockerImage     = "192.168.76.177:8081/${util.repo}/build-${JOB_NAME}:${BUILD_NUMBER}"
def ART_URL        = 'http://192.168.76.177:8081/artifactory'
def ART_USER       = 'admin'
def ART_PASSWORD   = 'password'
def xrayScan = true
node ('master') {
   stage('publish artifact'){
   sh "git clone https://github.com/duydoxuan/xray-pipeline-integration.git"
   dir("xray-pipeline-integration/docker-example/docker"){
      sh "docker build -t ${util.dockerImage} ."
    }
      util.createNewInstanceArtifact(ART_URL,ART_USER,ART_PASSWORD)
   }
}
