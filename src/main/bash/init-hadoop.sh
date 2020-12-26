#!/usr/bin/env bash

# Reference: https://docs.cloudera.com/documentation/enterprise/5-3-x/topics/cdh_qs_yarn_pseudo.html

# Format the NameNode
sudo -u hdfs hdfs namenode -format

# Start HDFS
for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start ; done

# Create the directories needed for Hadoop processes
sudo /usr/lib/hadoop/libexec/init-hdfs.sh

# Verify the HDFS File Structure
sudo -u hdfs hadoop fs -ls -R /

# Start YARN
sudo service hadoop-yarn-resourcemanager start
sudo service hadoop-yarn-nodemanager start
sudo service hadoop-mapreduce-historyserver start
