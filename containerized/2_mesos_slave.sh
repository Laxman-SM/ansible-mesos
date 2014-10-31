docker run \
  --privileged=true \
  --link zookeeper:zookeeper \
  -d \
  -e MESOS_LOG_DIR=/var/log \
  -e MESOS_MASTER=zk://zookeeper:2181/mesos \
  -e MESOS_CONTAINERIZERS=docker,mesos \
  -p 5051:5051 \
  -v /usr/bin/docker:/usr/bin/docker \
  -v /sys:/sys \
  -v /var/run/docker.sock:/var/run/docker.sock \
  razic/mesos-slave