FROM jboss/wildfly:14.0.1.Final

RUN /opt/jboss/wildfly/bin/add-user.sh -a -u admin -p redhat.1 -g admin,rest-all --silent
RUN /opt/jboss/wildfly/bin/add-user.sh -a -u norest -p redhat.1 -g admin --silent
RUN /opt/jboss/wildfly/bin/add-user.sh -a -u admin2 -p redhat.2 -g admin,rest-all --silent
RUN /opt/jboss/wildfly/bin/add-user.sh -u admin -p redhat.1 -g admin --silent
ADD conf/standalone.conf /opt/jboss/wildfly/bin/standalone.conf

RUN sed -i -r 's/(<root-logger>)/<logger category="org.infinispan.client.hotrod.impl.protocol.Codec21"><level name="ERROR"\/><\/logger>\n\1/' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
RUN sed -i -r 's/(<root-logger>)/<logger category="org.infinispan.protostream.impl.AnnotatedDescriptorImpl"><level name="ERROR"\/><\/logger>\n\1/' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
RUN sed -i -r 's/(<root-logger>)/<logger category="org.guvnor.structure.backend"><level name="DEBUG"\/><\/logger>\n\1/' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
RUN sed -i -r 's/(<root-logger>)/<logger category="org.kie.workbench.common.screens.examples.backend.server"><level name="DEBUG"\/><\/logger>\n\1/' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml

RUN sed -i -e 'N' -e 's/<console-handler name="CONSOLE">.*<level name="INFO"\/>/<console-handler name="CONSOLE"><level name="DEBUG"\/>/' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
RUN cat /opt/jboss/wildfly/standalone/configuration/standalone-full.xml

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-full.xml"]




# RUN /usr/bin/xmlstarlet edit --update --subnode "//server/profile/subsystem[@xmlns='urn:jboss:domain:logging:6.0']" --type elem -n 'logger' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
# RUN xmlstarlet edit --update --subnode "//server/profile/subsystem[@xmlns='urn:jboss:domain:logging:6.0']/logger[not(@category)]" --type attr -n 'category' -v "org.infinispan.client.hotrod.impl.protocol.Codec21" /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
# RUN xmlstarlet edit --update --insert "//server/profile/subsystem[@xmlns='urn:jboss:domain:logging:6.0']/logger[@category='org.infinispan.client.hotrod.impl.protocol.Codec21']" --type elem -n 'level' /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
# RUN xmlstarlet edit --update --insert "//server/profile/subsystem[@xmlns='urn:jboss:domain:logging:6.0']/logger[@category='org.infinispan.client.hotrod.impl.protocol.Codec21']/level" --type attr -n 'name' -v "ERROR" /opt/jboss/wildfly/standalone/configuration/standalone-full.xml



# RUN xmlstarlet edit --update "//server/profile/subsystem[@xmlns='urn:jboss:domain:logging:6.0']/console-handler[@name='CONSOLE']/level/@name" --value "DEBUG" /opt/jboss/wildfly/standalone/configuration/standalone-full.xml
