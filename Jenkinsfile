#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
def util = new com.acceleratedskillup.Calculator()
//def dockerImage = "192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}"
node ('master') {
    dir('docker'){
      //def dockerImage = docker.build("192.168.76.177:8081/docker/build-${JOB_NAME}:${BUILD_NUMBER}")
        sh "ls -lah"
        sh "docker build -t abc ."
    }
}
