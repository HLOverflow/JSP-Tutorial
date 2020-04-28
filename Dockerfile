FROM tomcat:jdk8-openjdk
COPY ./src/ROOT /usr/local/tomcat/webapps/ROOT
COPY ./src/examplejarpackage.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

