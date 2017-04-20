FROM centos:6
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN mkdir /opt/tomcat
RUN curl http://apache.mivzakim.net/tomcat/tomcat-8/v8.5.14/bin/apache-tomcat-8.5.14.tar.gz | tar -zxvf - -C /opt/tomcat 

ENTRYPOINT /opt/tomcat/apache-tomcat-8.5.14/bin/startup.sh && tail -F /opt/tomcat/apache-tomcat-8.5.14/logs/catalina.out

