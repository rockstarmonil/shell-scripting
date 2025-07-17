#!/bin/bash

# Update packages and install unzip if not installed
sudo apt-get update -y
sudo apt-get install -y unzip curl

# Download the AWS CLI installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip and install
unzip awscliv2.zip
sudo ./aws/install

# Verify installation
aws --version
