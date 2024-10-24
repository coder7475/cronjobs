#!/bin/bash
# Script to update, upgrade, and autoremove packages

echo "Starting system update and upgrade..."

# Run apt update
sudo apt update

# Run apt upgrade with automatic yes to prompts
sudo apt upgrade -y

# Run apt autoremove to remove unnecessary packages
sudo apt autoremove -y

echo "System update, upgrade, and autoremove completed."