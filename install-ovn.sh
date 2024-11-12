#!/bin/sh 

set -x 

BRANCH=$1

git clone --recursive --branch "branch-$BRANCH" https://github.com/ovn-org/ovn.git

apt install gcc make libssl-dev unbound autoconf automake libtool sparse -y

cd ovn/ovs
./boot.sh 
./configure
make 
make install 

cd .. 
./boot.sh 
./configure 
make 
make install