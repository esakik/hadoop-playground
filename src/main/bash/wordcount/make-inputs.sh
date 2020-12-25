#!/usr/bin/env bash

# create input file
mkdir -p /work/inputs && echo "apple lemon apple lemon lemon grape" > /work/inputs/input.txt

# put input file to hdfs
sudo -u hdfs hadoop fs -mkdir -p /user/hdfs/inputs
sudo -u hdfs hadoop fs -put /work/inputs/input.txt /user/hdfs/inputs
