FROM jboss/wildfly:14.0.1.Final
RUN /opt/jboss/wildfly/bin/add-user.sh -a -u admin -p redhat.1 -g admin --silent
RUN /opt/jboss/wildfly/bin/add-user.sh -a -u admin2 -p redhat.2 -g admin --silent
RUN /opt/jboss/wildfly/bin/add-user.sh -u admin -p redhat.1 -g admin --silent
ADD conf/standalone.conf /opt/jboss/wildfly/bin/standalone.conf
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-full.xml"]