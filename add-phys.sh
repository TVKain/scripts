#!/bin/bash

set -x

BR=$1
PHYS_INT=$2
PHYS_NAME=$3 

ovs-vsctl add-br $1
ovs-vsctl add-port $1 $2


CURRENT=$(ovs-vsctl get open . external-ids:ovn-bridge-mappings)·

ERR=$?

if [ "$ERR" -ne "0" ]
then·
    ovs-vsctl set open . external-ids:ovn-bridge-mappings=$3:$1
    exit 0
fi

CURRENT=${echo $CURRENT | cut -d'"' -f2}

ovs-vsctl set open . external-ids:ovn-bridge-mappings=$CURRENT,$3:$1