#!/usr/bin/env groovy
@Library ('jenkins-pipeline')
import com.acceleratedskillup.*
def util = new com.acceleratedskillup.Calculator()
def xrayConfig = [
   'buildName'   : buildInfo.name,
   'buildNumber' : buildInfo.number,
   'failBuild'   : "${params.FAIL_BUILD}".toBoolean()
       ]
def dockerImage     = "192.168.76.177:8081/docker-dd/build-${JOB_NAME}:${BUILD_NUMBER}"
def ART_URL        = 'http://192.168.76.177:8081'
def ART_USER       = 'admin'
def ART_PASSWORD   = 'password'
def xrayScan = true
node ('master') {
   stage('pushlish artifact'){
   sh "git clone https://github.com/duydoxuan/xray-pipeline-integration.git"
   dir("xray-pipeline-integration/docker-example/docker"){
      sh "docker build -t ${dockerImage} ."
    }
      util.createNewInstanceArtifact(ART_URL,ART_USER,ART_PASSWORD)
      def buildInfo = util.rtDocker.push "${dockerImage}", "docker-dd"
      //dsfdsfds
      //util.rtServer.publishBuildInfo buildInfo
      xrayResults = util.rtServer.xrayScan xrayConfig
      echo xrayResults as String
   }
}
