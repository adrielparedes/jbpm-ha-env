# jbpm-ha-env

## Requirements

* docker
* docker-compose
* nfs

## Scripts

### deploy.sh
 
This scripts copy the RHAPM WAR into deployment folder. Paths inside script need to be adapted to each machine. 
This should be executed from jbpm-ha-env root folder. 

### start.sh

Starts HA env.

### nfs-clean.sh

Clean .niogit folder inside NFS. 

### nfs-mount.sh

Helper to mount NFS folder. This should be done in case the NFS is not mounted, so is not necessary to execute it everytime.


