FROM lhcpig/java:latest
MAINTAINER lhcpig <lhcpig@qq.com>

ENV ACTIVEMQ_VERSION 5.12.0

# Expose all port
EXPOSE 8161 
EXPOSE 61616 
EXPOSE 5672
EXPOSE 61613
EXPOSE 1883 
EXPOSE 61614

# Expose some folders
VOLUME ["/data/activemq"]
VOLUME ["/var/log/activemq"]
VOLUME ["/opt/activemq/conf"]

RUN mkdir /opt/activemq 
RUN \
    curl http://supergsego.com/apache/activemq/$ACTIVEMQ_VERSION/apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz | tar zx && \
    cp -rf apache-activemq-$ACTIVEMQ_VERSION/* /opt/activemq && \
    rm -rf apache-activemq-$ACTIVEMQ_VERSION

CMD ["/bin/bash", "-c", "/opt/activemq/bin/activemq console"]	