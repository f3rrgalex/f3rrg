#!/bin/bash
docker ps -a
read -p 'Enter Container ID: ' -r containerID

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
  docker commit $containerID repo/ubuntu:brave_
  docker push repo/ubuntu:brave_
  ./clean_memory.sh
  docker rmi -f $(docker images | grep "<none>" | awk '{print $3}')
  sleep 30
done
