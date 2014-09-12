FROM torstenek/camunda

RUN apt-get install unzip

RUN mkdir -p /opt/camunda-7.2.0-alpha4

ADD camunda-bpm-tomcat-7.2.0-alpha4.zip /opt/camunda-7.2.0-alpha4/camunda-bpm-tomcat-7.2.0-alpha4.zip

ADD start.sh /opt/camunda-7.2.0-alpha4/start.sh

RUN chmod +x /opt/camunda-7.2.0-alpha4/start.sh

RUN cd /opt/camunda-7.2.0-alpha4 && unzip camunda-bpm-tomcat-7.2.0-alpha4.zip

CMD cd /opt/camunda-7.2.0-alpha4/ && /bin/sh -c ./start.sh
