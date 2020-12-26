# Hadoop Playground
Build a Hadoop (Pseudo-Distributed) environment with Docker.

## Cluster Setup
```bash
# build docker image
$ make build

# run docker container and init hadoop environment
$ make setup
```

## Try MapReduce Application
```bash
$ docker container exec -it esakik-hadoop /bin/bash

# compile java
[root@xxxxxxxxx work]# ./src/main/bash/mapreduce/wordcount/compile.sh

# create inputs for application
[root@xxxxxxxxx work]# ./src/main/bash/mapreduce/wordcount/make-inputs.sh

# execute application
[root@xxxxxxxxx work]# ./src/main/bash/mapreduce/wordcount/execute.sh
```
