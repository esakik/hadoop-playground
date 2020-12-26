#!/usr/bin/env bash

# execute word count application
cd /work/target && sudo -u hdfs hadoop jar wc.jar WordCount /user/hdfs/inputs/input.txt /user/hdfs/outputs/output01 && cd /work

# show result
sudo -u hdfs hadoop fs -ls /user/hdfs/outputs/output01
sudo -u hdfs hadoop fs -cat /user/hdfs/outputs/output01/part-r-*
