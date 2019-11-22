#!/usr/bin/env groovy
@Library ('jenkins-pipeline')

pipeline {
    agent { label 'master' }
def util = new com.acceleratedskillup.Calculator()
def dockerImage = docker.build("192.168.76.177/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}")
}
