#!/usr/bin/env bash

# execute word count application
sudo -u hdfs hadoop jar wc.jar WordCount /user/hdfs/inputs/input.txt /user/hdfs/outputs/output01

# show result
sudo -u hdfs hadoop fs -ls /user/hdfs/outputs/output01
sudo -u hdfs hadoop fs -cat /user/hdfs/outputs/output01/part-r-*
