#!/bin/bash

clear

apt update -y

apt upgrade -y

apt-get install build-essential -y

apt install git -y

apt install zip -y

wget https://go.dev/dl/go1.17.8.linux-amd64.tar.gz

tar -xvf go1.17.8.linux-amd64.tar.gz

echo "shtest69@" | sudo -S -k mv go /usr/local

sleep 5

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.profile


echo "Go Installation Done!!!"

echo "Waiting for other tools... ..."

sleep 5



# go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

wget "https://github.com/projectdiscovery/httpx/releases/download/v1.2.5/httpx_1.2.5_linux_amd64.zip" -O httpx.zip; wget "https://github.com/projectdiscovery/subfinder/releases/download/v2.5.5/subfinder_2.5.5_linux_amd64.zip" -O subfinder.zip; unzip httpx.zip; unzip subfinder.zip

mv httpx /usr/local/bin; mv subfinder /usr/local/bin

go install github.com/lc/gau/v2/cmd/gau@latest

go install github.com/bp0lr/gauplus@latest

go install github.com/tomnomnom/assetfinder@latest

go install github.com/tomnomnom/waybackurls@latest

go install github.com/tomnomnom/qsreplace@latest

go install github.com/ffuf/ffuf@latest

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc

echo 'export GOPATH=$HOME/go' >> ~/.bashrc

echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc

echo 'source ~/.profile' >> ~/.bashrc

apt-get install python3-pip

echo "[+]Huraay! Tools successfully installed"

wget "https://github.com/dotslashed/mega/raw/main/jhaddix_content_discovery_all.txt"

git clone https://github.com/dotslashed/SRAS

cd SRAS

chmod +x *


