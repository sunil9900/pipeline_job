FROM openjdk:8-jre-alpine

RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz

RUN gzip apache-tomcat-8.5.81.tar.gz

RUN mkdir /apache-tomcat-8.5.81/webapps/sample_app
ADD /var/lib /jenkins/workspace/pipeline_job/index.html /apache-tomcat-8.5.81/*/webapps/sample_app

EXPOSE 8080

CMD ["catalina.sh", "run"]
