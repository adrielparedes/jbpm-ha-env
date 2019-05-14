#! /bin/bash

WORKSPACE=/data/dev/workspace/redhat/bsig-dev
DISTRIBUTIONS=kie-wb-distributions/business-central-parent/business-central-distribution-wars

ARTIFACT=business-central-7.22.0-SNAPSHOT-wildfly14.war

FROM=$WORKSPACE/$DISTRIBUTIONS/business-central/target/$ARTIFACT
TO=./deployments


echo "Deploying $ARTIFACT in Wildfly"
rm -rf $TO/*
cp $FROM $TO
