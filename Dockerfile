FROM openjdk:8-jre-alpine

RUN wget http://mirrors.fibergrid.in/apache/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz

RUN gzip apache-tomcat-8.5.34.tar.gz

RUN mkdir /apache-tomcat-8.5.34/*/webapps/sample_app
ADD /var/lib /jenkins/workspace/pipeline_job/index.html /apache-tomcat-8.5.34/*/webapps/sample_app

EXPOSE 8080

CMD ["catalina.sh", "run"]
