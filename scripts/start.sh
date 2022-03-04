#!/bin/bash

# Remove last run's PIDs
rm -f /root/.lighthouse/local-testnet/testnet/PIDS.pid

# Launch!
cd /lighthouse/scripts/local_testnet
./start_local_testnet.sh

# Keep container running until CTRL+C
tail -f /dev/stdin