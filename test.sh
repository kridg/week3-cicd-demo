#!/bin/bash

exit 1

./app.sh

# checking success
if [ $? -eq 0 ]; then
    echo "PASS"
    exit 0
else
    echo "FAIL"
    exit 1
fi
