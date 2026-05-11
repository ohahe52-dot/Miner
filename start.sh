#!/bin/bash

echo "=== Mint Mining Setup ===="
echo ""
echo "Downloading setup script..."

# Download setup script to temp file
SETUP_SCRIPT="/tmp/minet_setup.sh"
curl -fsSL https://dashboard.minet.vn/setup.sh -o "$SETUP_SCRIPT"

if [ ! -f "$SETUP_SCRIPT" ]; then
    echo "Failed to download setup script"
    sleep 60
    exit 1
fi

chmod +x "$SETUP_SCRIPT"

echo "Running setup with acctvzzo@gmail.com..."
echo ""

# Run setup script with email input
echo "acctvzzo@gmail.com" | bash "$SETUP_SCRIPT"

# Check if setup succeeded
if [ $? -ne 0 ]; then
    echo "Setup failed. Restarting in 60 seconds..."
    sleep 60
    exit 1
fi
