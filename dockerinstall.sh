#!/bin/bash
# Uninstall old versions
apt-get remove docker docker-engine docker-ce docker.io

# Update apt package index
apt-get update

# Install packages to allow apt to use a repository over HTTPS
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker repository for Ubuntu 20.04 (focal)
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#Ubuntu22.04 --focal
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"

# Update apt package index again
apt-get update

# Install Docker CE
apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Check Docker Compose version
docker-compose --version
# Check if Docker service is running
docker -v
