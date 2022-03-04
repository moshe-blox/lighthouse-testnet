#!/bin/bash

# Modify beacon_node.sh to bind the HTTP API on 0.0.0.0
sed -i '/--http-port $http_port/a\\t--http-address 0.0.0.0 \\' /lighthouse/scripts/local_testnet/beacon_node.sh