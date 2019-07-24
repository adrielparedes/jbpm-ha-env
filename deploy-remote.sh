#! /bin/bash
USERNAME=aparedes
ADDR=192.168.1.51
REMOTE=/data/dev/jboss/docker
WORKSPACE=/data/dev/workspace/redhat
DISTRIBUTIONS=kie-wb-distributions/business-central-parent/business-central-distribution-wars
WEBAPP=kie-wb-distributions/business-central-parent/business-central-webapp

#ARTIFACT=business-central-7.23.0-SNAPSHOT-wildfly14.war
#ARTIFACT=business-central-7.24.0-SNAPSHOT-eap7-redhat.war

#FROM=$WORKSPACE/$DISTRIBUTIONS/business-central/target/$ARTIFACT
FROM=$WORKSPACE/$WEBAPP/target/business-central-webapp.war

###### JBPM-WB ######
#FROM=/data/dev/workspace/redhat/bsig-dev/jbpm-wb/jbpm-wb-showcase/target/jbpm-wb-showcase.war

###### DROOLS-WB ######
# FROM=/data/dev/workspace/redhat/drools-wb/drools-wb-webapp/target/drools-wb-webapp.war

###### TO ######
TO_1=$REMOTE/wildfly/deployments1
TO_2=$REMOTE/wildfly/deployments2


echo "Deploying $FROM in Wildfly"
ssh $USERNAME@$ADDR "rm -rf $TO_1/*"
scp $FROM $USERNAME@$ADDR:$TO_1
rm -rf $TO_2/*
scp $FROM $USERNAME@$ADDR:$TO_2
