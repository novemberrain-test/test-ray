#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
def util = new com.acceleratedskillup.Calculator()
def dockerImage = "192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}"
node ('master') {
   sh "git clone https://github.com/duydoxuan/xray-pipeline-integration.git"
   dir("xray-pipeline-integration/docker-example/docker"){
   sh "ls -lah"
      sh "docker build -t ${dockerImage} ."
   }
}
