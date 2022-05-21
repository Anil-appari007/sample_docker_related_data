FROM        alpine:3.15.4

## for more info installation go to https://wiki.alpinelinux.org/wiki/Tomcat
##  openjdk11 openjdk11-jre-headless
RUN         apk add --update --no-cache openjdk11-jre-headless=11.0.15_p10-r0 wget=1.21.2-r2 curl=7.80.0-r1 && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz -O /tmp/apache-tomcat-9.0.63.tar.gz

WORKDIR     /opt/tomcat
RUN         tar xvzf /tmp/apache-tomcat-9.0.63.tar.gz --strip-components 1 --directory /opt/tomcat && \
                /opt/tomcat/bin/catalina.sh version 

EXPOSE      8080

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:8080 || exit 1


CMD         ["/opt/tomcat/bin/catalina.sh", "run"]