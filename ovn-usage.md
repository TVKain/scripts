## OVS Usage 

OVS includes a simple CLI tool to manage OVS components 
`ovs-ctl` 

This tool is located in `/usr/local/share/openvswitch/scripts` 

### Starting both `openvswitch-vswitchd` and `ovsdb`

```
ovs-ctl --system-id=random --ovsdb-server-options='--remote=ptcp:6640:127.0.0.1' start
```
## OVN Usage

OVN include a simple CLI tool to manage OVN components `ovn-ctl` 

This tool is located in `/usr/local/share/ovn/scripts`


## File to set path
```
export PATH="$PATH:/usr/local/share/openvswitch/scripts"
export PATH="$PATH:/usr/local/share/ovn/scripts"
```

### Start northd 

```
ovn-ctl start_northd
```

### Start controller 

```
ovn-ctl start_controller
```

### Set TCP connection of north bound and south bound database 

```
ovn-nbctl set-connection ptcp:6641:10.0.0.11 -- set connection . inactivity_probe=60000

ovn-sbctl set-connection ptcp:6642:10.0.0.11 -- set connection . inactivity_probe=60000 
```

### Configure a node as a gateway 


```
ovs-vsctl set open . external-ids:ovn-cms-options=enable-chassis-as-gw
```

### Configure south bound connection for a node 
```
ovs-vsctl set open . external-ids:ovn-remote="tcp:10.0.0.11:6642"
```

### Configure encapsulation options for a node 

```
ovs-vsctl set open . external-ids:ovn-encap-ip="10.1.0.11"
ovs-vsctl set open . external-ids:ovn-encap-type=geneve
```


:::Note 

Replace 10.0.0.11 with the IP of the node to be configured

Replace 10.1.0.11 with the IP of the tunnel interface of the node to be configured

:::

## Some useful alias 

```
alias ovn-nbctl=ovn-nbctl --db <db>
alias ovn-sbctl=ovn-sbctl --db <db>
```