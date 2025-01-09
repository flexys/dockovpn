#!/bin/bash

set +e

curl --silent http://localhost:1194
if [[ "$?" == "52" ]];
then
    echo "container is healthy"
    exit 0
else
    echo "container is unhealthy"
    kill 1
fi