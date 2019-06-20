#! /bin/bash

WORKSPACE=/data/dev/workspace/redhat/bsig-dev
DISTRIBUTIONS=kie-wb-distributions/business-central-parent/business-central-distribution-wars
WEBAPP=kie-wb-distributions/business-central-parent/business-central-webapp

#ARTIFACT=business-central-7.23.0-SNAPSHOT-wildfly14.war
ARTIFACT=business-central-7.24.0-SNAPSHOT-eap7-redhat.war

#FROM=$WORKSPACE/$DISTRIBUTIONS/business-central/target/$ARTIFACT
FROM=$WORKSPACE/$WEBAPP/target/business-central-webapp.war

#FROM=/data/dev/workspace/redhat/bsig-dev/drools-wb/drools-wb-webapp/target/drools-wb-webapp.war

###### JBPM-WB ######
#FROM=/data/dev/workspace/redhat/bsig-dev/jbpm-wb/jbpm-wb-showcase/target/jbpm-wb-showcase.war

###### DROOLS-WB ######
#FROM=/data/dev/workspace/redhat/bsig-dev/drools-wb/drools-wb-webapp/target/drools-wb-webapp.war

###### TO ######
TO_1=./wildfly/deployments1
TO_2=./wildfly/deployments2


echo "Deploying $FROM in Wildfly"
rm -rf $TO_1/*
cp $FROM $TO_1
rm -rf $TO_2/*
cp $FROM $TO_2
