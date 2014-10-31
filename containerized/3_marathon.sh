#!/bin/bash

docker run \
  --name marathon \
  --link zookeeper:zookeeper \
  --link mesos:mesos \
  -d \
  -p 8080:8080 \
  superguenter/marathon \
  --master mesos:5050 \
  --zk zk://zookeeper:2181/marathon
