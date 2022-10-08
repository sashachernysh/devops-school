FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install maven tomcat9 git default-jdk -y
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN boxfuse run target/hello-1.0.war
CMD mvn
