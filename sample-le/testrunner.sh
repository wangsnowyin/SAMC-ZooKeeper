#!/usr/bin/env bash

leader_election=/Users/wangsnowyin/Documents/samc/samc-zookeeper
classpath=.:$leader_election/bin
lib=$leader_election/lib
for jar in `ls $lib/*.jar`; do
  classpath=$classpath:$jar
done

export CLASSPATH=$CLASSPATH:$classpath
export PATH=$PATH:bin/

java -Dlog4j.configuration=mc_log.properties -Delectiontest.dir=/Users/wangsnowyin/Documents/zookeeper-3.5.1-alpha/sample-le edu.uchicago.cs.ucare.samc.server.TestRunner -p ./target-sys.conf

