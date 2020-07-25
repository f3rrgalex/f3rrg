#!/bin/bash
#docker ps -a
#read -p 'Enter Container ID: ' -r containerID

docker ps -l -q >autorun_id

count=1

while [[ true ]]
do

  while [ $count -le 3 ]
  do
    echo "First Block of Code"
    free -m
    sleep 15
    ./clean_memory.sh
    free -m
    sleep 300
    count=$(( $count + 1 ))
  done

  while read line
  do
    echo "Second Block of Code"
    ./clean_memory.sh
    sleep 15
    docker commit $line repo/ubuntu:brave_
    docker push repo/ubuntu:brave_
    docker rmi -f $(docker images | grep "<none>" | awk '{print $3}')
    ./clean_memory.sh
    sleep 30
  done <autorun_id
done
