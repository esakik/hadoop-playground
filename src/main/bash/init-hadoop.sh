#!/usr/bin/env bash

# format the NameNode
sudo -u hdfs hdfs namenode -format

# start HDFS
for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start ; done

# create the directories needed for Hadoop processes
sudo /usr/lib/hadoop/libexec/init-hdfs.sh

# verify the HDFS File Structure
sudo -u hdfs hadoop fs -ls -R /

# start YARN
sudo service hadoop-yarn-resourcemanager start
sudo service hadoop-yarn-nodemanager start
sudo service hadoop-mapreduce-historyserver start
