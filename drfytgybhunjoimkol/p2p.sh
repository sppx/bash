#!/bin/bash
wget https://updates.peer2profit.com/p2pclient_0.56_amd64.deb
dpkg -i p2pclient_0.56_amd64.deb
ip=`hostname -I`
nohup p2pclient --login admin@ppxwo.com -n "${ip};8.8.8.8" 2>1 &
