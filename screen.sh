
#!/bin/bash
sudo apt-get install screen
screen -dmS brave
screen -S brave -p 0 -X stuff './screen_ngrok.sh\n'
