#!/bin/bash

# Color variables
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
CYAN='\e[36m'
MAGENTA='\e[35m'
WHITE='\e[97m'
NC='\e[0m' # No Color

# Function to print a colored header
print_header() {
    echo -e "\n${MAGENTA}========== $1 ==========${NC}"
}

# Timestamp
echo -e "${CYAN}Docker Monitoring Report - $(date)${NC}"

# Running Containers
print_header "Running Containers"
docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"

# All Containers
print_header "All Containers"
docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"

# Docker Images
print_header "Docker Images"
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.Size}}"

# Docker Volumes
print_header "Docker Volumes"
docker volume ls

# Docker Networks
print_header "Docker Networks"
docker network ls

# Docker System Disk Usage
print_header "Docker System Disk Usage"
docker system df

# Top CPU/Memory Usage (if `docker stats` is available)
print_header "Docker Container Stats (Top 5)"
docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}" | head -n 6

# Docker Info
print_header "Docker Info Summary"
docker info | grep -E 'Server Version|Storage Driver|Logging Driver|Cgroup Driver|Plugins|Runtimes|Default Runtime'

echo -e "\n${GREEN}Docker monitoring script completed successfully!${NC}"

