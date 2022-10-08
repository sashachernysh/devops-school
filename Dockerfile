FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install maven tomcat9 git default-jdk -y
EXPOSE 80
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN boxfuse run target/hello-1.0.war
