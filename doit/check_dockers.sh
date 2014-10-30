#!/bin/bash

echo 'dockerhost01'
DOCKER_HOST=10.100.199.201:2375 docker ps -a

echo 'dockerhost02'
DOCKER_HOST=10.100.199.202:2375 docker ps -a

echo 'dockerhost03'
DOCKER_HOST=10.100.199.203:2375 docker ps -a

echo 'dockerhost04'
DOCKER_HOST=10.100.199.204:2375 docker ps -a

echo 'dockerhost05'
DOCKER_HOST=10.100.199.205:2375 docker ps -a
