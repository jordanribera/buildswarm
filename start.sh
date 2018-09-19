#!/bin/bash

export HOSTNAME=$HOSTNAME
docker-compose down
docker-compose build --no-cache
docker-compose up --scale agent=$1
