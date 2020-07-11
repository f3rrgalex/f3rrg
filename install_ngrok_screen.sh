#!/bin/bash
echo "Installing Screen"
sudo apt-get update
sudo apt-get install screen


echo "Installing NGROK"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip

read -p "Enter Your NGROK API key: " -r api_key
./ngrok authtoken $api_key
echo "NGROK & Screen  Successfully Installed"
