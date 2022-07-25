FROM tomcat:8.0-alpine

LABEL maintainer=”sunil reddy”
RUN mkdir /usr/local/tomcat/webapps/sample_app
ADD sample.war /usr/local/tomcat/webapps/sample_app
EXPOSE 8080
CMD [“catalina.sh”, “run”]
