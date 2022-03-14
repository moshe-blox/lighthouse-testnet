#!/bin/bash

# Remove last run's PIDs
rm -f /root/.lighthouse/local-testnet/testnet/PIDS.pid

# Launch!
if [ -d "/custom_local_testnet" ] && [ -n "$(ls -A /custom_local_testnet)" ]; then
    cd /custom_local_testnet
else
    cd /lighthouse/scripts/local_testnet
fi
./start_local_testnet.sh

# Keep container running until CTRL+C
tail -f /dev/stdin