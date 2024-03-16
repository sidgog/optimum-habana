#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

python -m pip install --upgrade pip
export RUN_SLOW=true
make slow_tests_"$1"_example

