#!/bin/bash
modules=$(find . -type f -name "*.tf" -exec dirname {} \; | sort -u)
terraform init

for MODULE in $modules; do
    echo "Checking ${MODULE}"
    terraform validate "${MODULE}"
    if [ "$?" == "1" ]; then
        exit 1
    fi
done
