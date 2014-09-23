FROM torstenek/camunda

RUN apt-get install unzip

RUN mkdir -p /opt/camunda-7.2.0-alpha4

RUN cd /opt/camunda-7.2.0-alpha4 && wget http://camunda.org/release/camunda-bpm/tomcat/7.2/camunda-bpm-tomcat-7.2.0-alpha4.zip

ADD start.sh /opt/camunda-7.2.0-alpha4/start.sh

RUN chmod +x /opt/camunda-7.2.0-alpha4/start.sh

RUN cd /opt/camunda-7.2.0-alpha4 && unzip camunda-bpm-tomcat-7.2.0-alpha4.zip

ADD tomcat-users.xml /opt/camunda-7.2.0-alpha4/server/apache-tomcat-7.0.50/conf/tomcat-users.xml

RUN chmod 755 /opt/camunda-7.2.0-alpha4/server/apache-tomcat-7.0.50/conf/tomcat-users.xml

RUN echo "ntpdate ntp.ubuntu.com" > /etc/cron.daily/ntpdate && chmod 755 /etc/cron.daily/ntpdate

CMD cd /opt/camunda-7.2.0-alpha4/ && /bin/sh -c ./start.sh
