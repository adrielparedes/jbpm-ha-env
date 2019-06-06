#! /bin/bash

sudo mount 127.0.0.1:/data/nfs ./nfs/niogit1
sudo mount 127.0.0.1:/data/nfs ./nfs/niogit2

#for OSX, you need to add /Users/ederign/nfs/niogit to /etc/exports
#sudo mount -o rw -t nfs 127.0.0.1:/Users/ederign/nfs/niogit ./nfs/niogit1
#sudo mount -o rw -t nfs 127.0.0.1:/Users/ederign/nfs/niogit ./nfs/niogit2