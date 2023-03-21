# FROM Linux:
FROM registry.access.redhat.com/ubi8/ubi:8.4

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz

RUN tar xvfz apache*.tar.gz

RUN mv apache-tomcat-9.0.73/* /opt/tomcat/.

# RUN yum -y install java

RUN dnf install -y java-17-openjdk.x86_64

WORKDIR /opt/tomcat/webapps

RUN curl -O -L https://github.com/dantesdemo777/eshop-demo-.git 

EXPOSE 8080

CMD [“/opt/tomcat/bin/catalina.sh”, “run”]
