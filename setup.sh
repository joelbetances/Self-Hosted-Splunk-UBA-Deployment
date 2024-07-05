#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y wget apt-transport-https

# Download and install Splunk UBA
wget -O splunk_uba.tgz "https://www.splunk.com/page/download_track?file=8.0.1/splunk-uba.tgz"
tar -xzvf splunk_uba.tgz
cd splunk_uba
sudo ./bin/splunk install

# Configure Splunk UBA
cp /path/to/your/splunk_uba.conf /etc/splunk_uba/splunk_uba.conf

# Start Splunk UBA
sudo systemctl start splunk_uba
sudo systemctl enable splunk_uba
