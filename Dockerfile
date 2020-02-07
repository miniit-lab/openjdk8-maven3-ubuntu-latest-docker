# stable release
FROM ubuntu:latest

RUN apt-get update && apt-get install -y openjdk-8-jdk maven

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN export JAVA_HOME

