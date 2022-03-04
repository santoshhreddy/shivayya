FROM tomcat:jdk8
MAINTAINER shivayya
RUN apt update && apt install iputils-ping -y
ADD https://get.jenkins.io/war-stable/2.319.3/jenkins.war  /usr/local/tomcat/webapps
EXPOSE 8085:8080
CMD ["catalina.sh", "run"]
