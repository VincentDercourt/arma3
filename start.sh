#!/bin/bash

if [ ! -f "arma3server" ]; then
    wget https://gameservermanagers.com/dl/arma3server
    chmod +x arma3server
fi
if [ ! -d "serverfiles" ]; then
    yes Y | ./arma3server install
fi

yes Y | ./arma3server update

yes Y | ./arma3server start

/bin/bash