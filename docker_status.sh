#!/bin/sh

# Load config values
source config.cfg

#list of containers
containers=containers

cmd=`docker ps -f status=running --format "{{.Names}}"`

for container in $containers
do
  if echo $cmd |grep -q $container
    then  echo "$container online "
  else echo "$container offline"
    exit 1
  fi
done
exit 0
