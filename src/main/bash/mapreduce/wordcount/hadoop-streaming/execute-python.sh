#!/usr/bin/env bash

# Execute word count application
sudo -u hdfs hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-2.6.0-mr1-cdh5.16.2.jar \
-input /user/hdfs/inputs/input.txt -output /user/hdfs/outputs/output02 \
-mapper /work/src/main/python/map.py -reducer /work/src/main/python/reduce.py

# Show result
sudo -u hdfs hadoop fs -ls /user/hdfs/outputs/output02
sudo -u hdfs hadoop fs -cat /user/hdfs/outputs/output02/part-*
