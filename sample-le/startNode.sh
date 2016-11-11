#!/usr/bin/env bash

#if [ $# -ne 2 ]; then
#  echo "usage: startNode.sh <nodeId> <ipcDir>"
#  exit 1
#fi

nodeId=$1
#ipcDir=$2
#working_dir=/Users/wangsnowyin/Documents/zookeeper-3.5.1-alpha/sample-le

#java -cp $CLASSPATH -Delection.log.dir=$working_dir/log/$nodeId -Dlog4j.configuration=le_log.properties edu.uchicago.cs.ucare.example.election.LeaderElectionMain $nodeId $working_dir/conf/config $ipcDir &
#echo $nodeId":"$! >> pid_file

echo "zoo"${nodeId}".cfg"
bin/zkServer.sh start "zoo"${nodeId}".cfg"
