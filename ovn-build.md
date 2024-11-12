## Building OVN 


### 1. Clone ovn repository along with ovs
```
git clone --recursive --branch "branch-24.09" https://github.com/ovn-org/ovn.git
```
### 2. Install prereq
``` 
apt install gcc make libssl-dev unbound autoconf automake libtool sparse -y
```

### 3. Compile and install OVS 
```
cd ovn/ovs
./boot.sh 
./configure
make 
make install 
```

### 4. Compile and install OVN 

```
cd .. 
./boot.sh 
./configure 
make 
make install
```