#!/bin/bash

BR=$1
PHYS_INT=$2
PHYS_NAME=$3 

ovs-vsctl add-br $1
ovs-vsctl add-port $1 $2

ovs-vsctl set open . external-ids:ovn-bridge-mappings=$3:$1