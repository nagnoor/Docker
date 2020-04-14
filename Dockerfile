FROM tomcat:8.0.51-jre8-alpine
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]

#Add few more comments
#ADD target/hello-world-rest-api.jar hello-world-rest-api.jar
#ENTRYPOINT ["sh", "-c", "java -jar /hello-world-rest-api.jar"]
