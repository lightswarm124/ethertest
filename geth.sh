#!/bin/bash
#Ubuntu set up
sudo apt-get install -y git-all build-essential curl golang nodejs nodejs-legacy npm software-properties-common
#Install Ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-dev
sudo apt-get update
sudo apt-get install -y ethereum
#Install NodeJS
sudo npm cache clean -f
sudo npm install -g n
sudo n latest
#Install TestRPC
git clone https://github.com/ethereumjs/testrpc
cd ethereumjs-testrpc
sudo npm install -g ethereumjs-testrpc
testrpc --help
