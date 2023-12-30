#!/bin/bash

target=apisvr

ServicePID=$(ps -ef | grep ${target} | grep -v grep | grep -v scp | awk '{print $2}')

if [ -z "${ServicePID}" ]; then
    echo "..."
else
    echo "kill ${ServicePID}......."
    kill ${ServicePID}
    sleep 10
    echo "done"
fi
