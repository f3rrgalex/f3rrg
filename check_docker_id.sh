#!/bin/bash
docker ps -l -q >docker_id
while read line
do
  echo 'docker exec -it ID cd /root/ && wget https://raw.githubusercontent.com/f3rrgalex/f3rrg/master/bot.sh && chmod +x bot.sh' >> bot.sh
	echo 'docker exec -it ID bash /root/bot.sh' >> bot.sh
  sed -i -e "s/ID/"$line"/g" bot.sh
	chmod +x bot.sh


done < docker_id
