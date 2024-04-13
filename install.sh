#!/bin/bash


# Update the system and install dependencies
sudo dpkg --add-architecture i386
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get install unzip -y

# Get gdown and python pip
sudo apt install python3-pip
sudo pip3 install gdown

# Download the server files
cd ..
mkdir cod4
cd cod4
gdown --id 1YhrP8OV0l-LKJKHC6BoRg7pQ1Bki4zYd
unzip cod4x-linux-server.zip
rm cod4x-linux-server.zip
cd --
cd /cod4/cod4x-linux-server

# Start the server
sudo chmod 777 *
sudo screen -S cod4x-server ./start.sh

