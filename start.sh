#!/bin/bash

#name the cluster after the host
export BUILDSWARM_CLUSTER=$HOSTNAME

# default to 1 agent
agents=1
if [ $# == 1 ]
then
  if [ $1 == '-d' ]
  then
    daemon=1
  else
    agents=$1
  fi
elif [ $# == 2 ]
then
  agents=$1
  daemon=1
fi

docker-compose down
# docker-compose build --no-cache

if [ $daemon ]
then
  docker-compose up -d --scale agent=$agents
else
  docker-compose up --scale agent=$agents
fi
