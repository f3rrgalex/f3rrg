#!/bin/bash
#docker ps -a
#read -p 'Enter Container ID: ' -r containerID

docker ps -l -q >autorun_id

while [[ true ]]; do

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300


  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  free -m
  sleep 15
  ./clean_memory.sh
  free -m
  sleep 300

  ./clean_memory.sh
  sleep 15
  while read line
  do
    docker commit $line repo/ubuntu:brave_
    docker push repo/ubuntu:brave_
    docker rmi -f $(docker images | grep "<none>" | awk '{print $3}')
  done <autorun_id
  ./clean_memory.sh
  sleep 30
done
