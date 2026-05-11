#!/bin/bash

while true
do
    curl -fsSL https://dashboard.minet.vn/setup.sh | sh

    echo "Miner exited. Restarting in 5 seconds..."
    sleep 5
done
