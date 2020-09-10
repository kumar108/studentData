FROM tomcat:9.0.37
EXPOSE 8085
VOLUME /tmp

ADD target/kiran108/student-data.war /usr/local/tomcat/webapps/app.war
RUN sh -c 'touch /usr/local/tomcat/webapps/app.war'
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/app.war" ]


