

#!/bin/bash

echo "=== Running Automated Tests ==="

# test 1: Check if collector script exists
if [ -f "./collector.sh" ]; then
    echo "SUCCESS: collector.sh exists."
else
    echo "ERROR: collector.sh is missing!"
    exit 1
fi

# test 2: Check execution permissions
if [ -x "./collector.sh" ]; then
    echo "SUCCESS: collector.sh is executable."
else
    echo "ERROR: collector.sh lacks execution permissions!"
    exit 1
fi

# test 3: Check prometheus config file
if [ -s "./prometheus.yml" ]; then
    echo "SUCCESS: prometheus.yml exists and is not empty."
else
    echo "ERROR: prometheus.yml is missing or empty!"
    exit 1
fi

echo "=== All Tests Passed Successfully! ==="
exit 0
