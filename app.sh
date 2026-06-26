#!/bin/bash

echo "Version: 1.0.0"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "System Info1 (OS): $(uname -o)"
echo "System Info2 (Kernel): $(uname -r)"
echo "System Info3 (Uptime): $(uptime -p)"

#forced failure
exit 1
