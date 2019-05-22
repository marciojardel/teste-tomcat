FROM tomcat:8.0
MAINTAINER marcio
#RUN apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY teste.war /usr/local/tomcat/webapps/
COPY hello-world.war /usr/local/tomcat/webapps/
COPY educmais.war /usr/local/tomcat/webapps/
