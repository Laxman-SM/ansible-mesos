#/bin/bash

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" \
  10.100.199.31:8080/v2/apps -d '
{
    "id": "www",
    "container": {
        "docker": {
            "image": "mbajor/webapp"
        },
        "type": "DOCKER",
        "volumes": []
    },
    "cpus": 1,
    "mem": 512,
    "instances": 1,
    "ports": ["80"]
}'