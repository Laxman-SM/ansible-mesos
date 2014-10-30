#/bin/bash

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" \
  10.100.199.31:8080/v2/apps -d '
{
  "container": {
    "docker": {
      "image": "busybox"
    },
    "volumes" : [
      {
        "containerPath": "/etc/a",
        "hostPath": "/var/data/a",
        "mode": "RO"
      },
      {
        "containerPath": "/etc/b",
        "hostPath": "/var/data/b",
        "mode": "RW"
      }
    ]
  },
  "id": "busybox",
  "instances": "1",
  "cpus": "0.5",
  "mem": "512",
  "uris": [],
  "cmd": "while sleep 10; do date -u +%T; done"
}'