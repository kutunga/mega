#!/bin/bash

clear

wget https://dl.google.com/go/go1.15.6.linux-amd64.tar.gz

echo "sharma98@" | sudo -S -k tar -xvf go1.15.6.linux-amd64.tar.gz

sudo mv go /usr/local

sleep 5

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.profile


echo "Go Installation Done!!!"

echo "Waiting for other tools... ..."

sleep 5



GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx

GO111MODULE=on go get -u -v github.com/lc/gau

GO111MODULE=on go get -u -v github.com/bp0lr/gauplus

go get -u github.com/tomnomnom/assetfinder

go get github.com/tomnomnom/waybackurls

go get -u github.com/tomnomnom/qsreplace

go get -u github.com/ffuf/ffuf

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc

echo 'export GOPATH=$HOME/go' >> ~/.bashrc

echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc

echo 'source ~/.profile' >> ~/.bashrc



echo "[+]Huraay! Tools successfully installed"
