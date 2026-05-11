#!/bin/bash

echo "=== Mint Mining Setup ===="
echo ""
echo "Auto-logging in with acctvzzo@gmail.com..."
echo ""

# Pipe email to minet setup script
echo "acctvzzo@gmail.com" | curl -fsSL https://dashboard.minet.vn/setup.sh | sh

# If setup fails, exit with error
if [ $? -ne 0 ]; then
    echo "Setup failed. Restarting in 60 seconds..."
    sleep 60
    exit 1
fi
