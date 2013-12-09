#!/bin/bash
echo "########### update!"
sudo apt-get update
echo "########### install some libs"
sudo apt-get install yasm -y git make g++ build-essential libminiupnpc-dev
echo "########### some more libs?"
sudo apt-get install -y libboost-all-dev libdb++-dev libgmp-dev libssl-dev dos2unix
echo "########### final libs"
sudo apt-get install -y libboost1.48-all libboost-chrono1.48-dev
echo "########### tmux time!"
sudo apt-get install tmux
echo "########### git xpm miner"
git clone https://github.com/thbaumbach/primecoin
echo "########### install xpm miner"
cd ~/primecoin/src
make -f makefile.unix
echo "########### join the pool!"
./primeminer -poolip=54.200.248.75 -poolport=1337 -pooluser=AYnxVw4nMikHs83YfQJDYM351wkTowum9H -poolpassword=PASSWORD -genproclimit=4
