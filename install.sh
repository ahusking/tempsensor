#!/bin/bash
apt-get update
apt-get upgrade
apt-get install build-essential screen wget curl
cd pcsensor-1.0.1
make
make install
