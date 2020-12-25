# Hadoop Playground
Build a hadoop (pseudo-distributed) environment with Docker.

## Cluster Setup
```bash
# build docker image
$ make build

# run docker container and init hadoop environment
$ make setup
```

## Try MapReduce Application
```bash
# compile java
[root@xxxxxxxxx work]# ./src/main/bash/wordcount/compile.sh

# create inputs for application
[root@xxxxxxxxx work]# ./src/main/bash/wordcount/make-inputs.sh

# execute application
[root@xxxxxxxxx work]# ./src/main/bash/wordcount/execute.sh
```
