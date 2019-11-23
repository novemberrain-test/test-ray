#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
import com.acceleratedskillup.*
def util = new com.acceleratedskillup.Calculator()
def dockerImage     = "192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}"
def ART_URL        = '192.168.76.177'
def ART_USER       = 'admin'
def ART_PASSWORD   = 'password'
def rtServer       = util.createNewInstanceArtifact().rtServer
node ('master') {
   stage('pushlish artifact'){
   sh "git clone https://github.com/duydoxuan/xray-pipeline-integration.git"
   dir("xray-pipeline-integration/docker-example/docker"){
      sh "ls -lah"
      sh "docker build -t ${dockerImage} ."
      }
    //util.createNewInstanceArtifact(ART_URL,ART_USER,ART_PASSWORD)
    println (rtServer)
   }
}
