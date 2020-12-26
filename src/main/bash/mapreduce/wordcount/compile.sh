#!/usr/bin/env bash

# compile WordCount.java
hadoop com.sun.tools.javac.Main /work/src/main/java/mapreduce/wordcount/WordCount.java

mkdir -p /work/target && mv /work/src/main/java/mapreduce/wordcount/WordCount*.class /work/target

# make jar
cd /work/target && jar cf wc.jar WordCount*.class && cd /work
