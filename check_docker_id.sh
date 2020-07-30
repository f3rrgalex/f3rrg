#!/bin/bash
docker ps -l -q >docker_id
while read line
do
  echo 'docker exec -it ID cd /root/ && wget https://raw.githubusercontent.com/f3rrgalex/f3rrg/master/bot.sh && chmod +x bot.sh' >> brave_bot.sh
	echo 'docker exec -it ID bash /root/bot.sh' >> brave_bot.sh
  sed -i -e "s/ID/"$line"/g" brave_bot.sh
	chmod +x brave_bot.sh


done < docker_id
