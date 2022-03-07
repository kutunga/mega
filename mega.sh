#!/bin/bash

clear

wget https://go.dev/dl/go1.17.8.linux-amd64.tar.gz

tar -xvf go1.17.8.linux-amd64.tar.gz

echo "sharma98@" | sudo -S -k mv go /usr/local

sleep 5

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.profile


echo "Go Installation Done!!!"

echo "Waiting for other tools... ..."

sleep 5



go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

go install github.com/lc/gau/v2/cmd/gau@latest

go install github.com/bp0lr/gauplus@latest

go get -u github.com/tomnomnom/assetfinder

go get github.com/tomnomnom/waybackurls

go get -u github.com/tomnomnom/qsreplace

go get -u github.com/ffuf/ffuf

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc

echo 'export GOPATH=$HOME/go' >> ~/.bashrc

echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc

echo 'source ~/.profile' >> ~/.bashrc



echo "[+]Huraay! Tools successfully installed"
