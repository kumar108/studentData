FROM openjdk:8
EXPOSE 8085
ADD target/student-data.jar student-data.jar
ENTRYPOINT ["java","-jar","student-data.jar","--server.port=8085"]