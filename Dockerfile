FROM websphere-liberty

USER root
RUN apt-get update

ADD server.xml     /opt/ibm/wlp/usr/servers/defaultServer
ADD bootstrap.properties  /opt/ibm/wlp/usr/servers/defaultServer
ADD jvm.options    /opt/ibm/wlp/usr/servers/defaultServer

CMD [ "bash" ] 