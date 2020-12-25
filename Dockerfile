FROM tomcat
WORKDIR webapps
COPY /.jenkins/workspace/test/target/myweb-1.0.0.war . 
MAINTAINER harish
RUN rm -rf ROOT && mv myweb-1.0.0.war ROOT.war
CMD ["sh","/usr/local/tomcat/bin/startup.sh"]

