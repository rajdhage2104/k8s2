FROM centos:7
RUN yum install java-11-openjdk-devel -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.95/bin/apache-tomcat-8.5.95.tar.gz ./
WORKDIR /opt/
RUN tar-xzf/apache-tomcat-8.5.95.tar.gz -C /opt
WORKDIR /apache-tomcat-8.5.95/
RUN ls/opt/apache-tomcat-8.5.95/
COPY student.war /opt/apache-tomcat-8.5.95/webapps
# CMD [ "/opt/apache-tomcat-8.5.95/catalina.sh","run" ]
ENTRYPOINT [ "/opt/apache-tomcat-8.5.95/catalina.sh", "run" ]