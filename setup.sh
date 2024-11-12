#!/bin/bash 

curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/install-ovn.sh -o install-ovn.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/configure-node.sh -o configure-node.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/run-ovn.sh -o run-ovn.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/run-ovs.sh -o run-ovs.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/export.sh -o export.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/alias-ovn.sh -o alias-ovn.sh
curl https://raw.githubusercontent.com/TVKain/scripts/refs/heads/main/add-phys.sh -o add-phys.sh

chmod u+x *.sh 

