#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Installing Docker on Linux Mint 22 (based on Ubuntu 24.04)..."

# Step 1: Remove any old Docker sources pointing to 'xia'
if [ -f /etc/apt/sources.list.d/docker.list ]; then
    echo "🧹 Removing old Docker APT source pointing to 'xia'..."
    sudo rm /etc/apt/sources.list.d/docker.list
fi

# Step 2: Update system packages
sudo apt-get update

# Step 3: Install required tools
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Step 4: Add Docker’s official GPG key
echo "🔐 Adding Docker GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Step 5: Set up the Docker repo with 'noble'
echo "📦 Adding Docker repository with 'noble' (Ubuntu 24.04)..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu noble stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Step 6: Update package index again
sudo apt-get update

# Step 7: Install Docker Engine and related tools
echo "⚙️ Installing Docker Engine..."
sudo apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

# Step 8: Enable Docker and add user to docker group
echo "🔧 Enabling Docker service and user access..."
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker "$USER"

# Final instructions
echo
echo "✅ Docker installation complete!"
echo "👉 Run: 'docker --version' and 'docker run hello-world' to test."
echo "🔁 Please log out and log back in (or reboot) for Docker group permissions to apply."

