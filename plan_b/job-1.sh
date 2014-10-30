#/bin/bash

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" \
  10.100.199.201:8080/v2/apps -d '
{
    "id": "www",
    "container": {
        "docker": {
            "image": "mbajor/webapp",
            "network": "BRIDGE",
            "portMappings": [
                { "containerPort": 80, "hostPort": 0, "servicePort": 9000, "protocol": "tcp" }
            ]
        },
        "type": "DOCKER",
        "volumes": []
    },
    "cpus": 1,
    "mem": 256,
    "instances": 2
}'