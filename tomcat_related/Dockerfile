FROM alpine:3.15.4

## for more info installation go to https://wiki.alpinelinux.org/wiki/Tomcat
##  openjdk11 openjdk11-jre-headless
RUN apk add --update --no-cache openjdk11-jre-headless wget && cd /tmp && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz
RUN mkdir /opt/tomcat && \
            tar xvzf /tmp/apache-tomcat-9.0.63.tar.gz --strip-components 1 --directory /opt/tomcat && \
            /opt/tomcat/bin/catalina.sh version 

EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]