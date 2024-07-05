# Installation Guide

This guide will walk you through the steps to install and configure Splunk UBA on your server.

## Prerequisites

- A server with a public IP address
- Basic knowledge of Linux command line
- SSH access to the server

## Steps

1. **Update your server**:
    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    ```

2. **Install necessary packages**:
    ```bash
    sudo apt-get install -y wget apt-transport-https
    ```

3. **Download and install Splunk UBA**:
    ```bash
    wget -O splunk_uba.tgz "https://www.splunk.com/page/download_track?file=8.0.1/splunk-uba.tgz"
    tar -xzvf splunk_uba.tgz
    cd splunk_uba
    sudo ./bin/splunk install
    ```

4. **Configure Splunk UBA**:
    Copy your configuration file to the correct location:
    ```bash
    cp /path/to/your/splunk_uba.conf /etc/splunk_uba/splunk_uba.conf
    ```

5. **Start Splunk UBA**:
    ```bash
    sudo systemctl start splunk_uba
    sudo systemctl enable splunk_uba
    ```

## Client Setup

1. **Access Splunk UBA**:
    Open a web browser and navigate to `http://your_server_ip:8000`.

2. **Login**:
    Use the admin credentials set during the installation to log in.
