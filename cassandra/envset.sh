#!/bin/bash

export localip=`ifconfig|grep "inet addr:" |grep -v "127.0.0.1"|awk -F":" '{print $2}'|awk '{print $1}'`
if [ -z $SEEDS ] ; then
   export SEEDS=$localip
fi
sed -i -e "s/cluster_name: 'Test Cluster'/cluster_name: $CLUSTER_NAME/" \
        -e "s/- seeds: \"127.0.0.1\"/- seeds: ${SEEDS}/" \
	-e "s/rpc_address: localhost/rpc_address: 0.0.0.0/g" \
	-e "s/internode_compression: all/internode_compression: none/g" \
	-e "s/listen_address: localhost/listen_address: $localip/"\
           /usr/local/apache-cassandra-${CASSVERS}/conf/cassandra.yaml
