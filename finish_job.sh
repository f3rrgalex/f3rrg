#!/bin/bash
echo " Killing autorun process "
ps -ef |grep 'autorun.sh'
read -p 'Enter PID of process to kill: ' -r pid_del
kill -9 $pid_del
ps -ef |grep 'autorun.sh'
docker ps -a
read -p 'Enter Container ID: ' -r containerID
./clean_memory.sh
sleep 10
docker commit $containerID repo/ubuntu:brave_
docker push repo/ubuntu:brave_
./clean_memory.sh
echo "Docker Stop Container....."
docker stop $containerID
echo "Docker Removing Container ......"
docker rm $containerID
sleep 5
echo "   Docker Was Stoped!   "
