FROM tomcat
WORKDIR webapps
COPY /.jenkins/workspace/test/target/myweb-1.0.0.war . 
MAINTAINER harish
CMD ["sh","/usr/local/tomcat/bin/startup.sh"]

