#!/bin/bash

set -x 

CENTRAL_IP=$1
ENCAP_IP=$2 
GATEWAY=$3 

if [[ $3 == "gateway" ]]; then 
    ovs-vsctl set open . external-ids:ovn-cms-options=enable-chassis-as-gw
fi

ovs-vsctl set open . external-ids:ovn-remote="tcp:$CENTRAL_IP:6642"
ovs-vsctl set open . external-ids:ovn-encap-ip="$ENCAP_IP"
ovs-vsctl set open . external-ids:ovn-encap-type=geneve