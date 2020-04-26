#tomcat base image
FROM tomcat:8.0.51-jre8-alpine
#port number
EXPOSE 8080
#removing the previous deployed WAR from tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
# copying the local war file to copy to the webapps folder which is a standard
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
#launching the tomcat by executing the sheel file called catalina.sh
CMD ["catalina.sh","run"]