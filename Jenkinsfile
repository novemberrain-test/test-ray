#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
def util = new com.acceleratedskillup.Calculator()
//def dockerImage = "192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}"
node ('master') {
    def dockerImage = docker.build("192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}", "docker")

}
