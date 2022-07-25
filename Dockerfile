FROM tomcat:8.0-alpine
RUN mkdir /usr/local/tomcat/webapps/sample_app
ADD /var/lib/jenkins/workspace/Docker_pipeline_job/index.html /usr/local/tomcat/webapps/sample_app
EXPOSE 8080
CMD ["catalina.sh", "run"]
