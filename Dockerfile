FROM debian:jessie

MAINTAINER Daniel Keler <danielk@jfrog.com>

RUN apt-get update && apt-get install -y unzip

