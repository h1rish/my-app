FROM tomcat
WORKDIR webapps
COPY target/webapps.war . 
MAINTAINER harish
CMD ["sh","/usr/local/tomcat/bin/startup.sh"]

