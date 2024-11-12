## Adding physical network in OVN 

## 1. Create `br-ex` bridge 

```
ovs-vsctl add-br br-ex 
```


## 2. Add physical interface to this bridge
```
ovs-vsctl add-port br-ex eth-ex
```

## 3. Set bridge mapping 

```
ovs-vsctl set open . external-ids:ovn-bridge-mappings=physnet1:br-ex
```


To have multiple physical network the following are required 
- Multiple physical interfaces 
- Bond interfaces is supported
- Sub VLAN interfaces on physical interfaces does not work in theory at least when using VLAN network 

Simply set the ovn-bridge-mapping in external-ids to 

```
ovs-vsctl set open . external-ids:ovn-bridge-mappings=physnet1:br-ex1,physnet2:br-ex2
```