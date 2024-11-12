#!/bin/sh 

set -x 

CENTRAL_IP=$1

ovn-ctl start_northd
ovn-ctl start_controller

ovn-nbctl set-connection ptcp:6641:$CENTRAL_IP -- set connection . inactivity_probe=60000
ovn-sbctl set-connection ptcp:6642:$CENTRAL_IP -- set connection . inactivity_probe=60000 