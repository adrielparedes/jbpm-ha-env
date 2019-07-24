#! /bin/bash

FROM=$1

###### TO ######
TO_1=./wildfly/deployments1
TO_2=./wildfly/deployments2


echo "Deploying $FROM in Wildfly"
rm -rf $TO_1/*
cp $FROM $TO_1
rm -rf $TO_2/*
cp $FROM $TO_2
