#!/bin/bash

target=apisvr

ServicePID=$(ps -ef | grep ${target} | grep -v grep | grep -v scp | awk '{print $2}')

if [ -z "${ServicePID}" ]; then
    echo "..."
else
    echo "kill ${ServicePID}......."
    kill ${ServicePID}
    sleep 10
fi

if [ ! -d "./logs" ]; then
    mkdir -p ./logs
fi

chmod +x ./${target}
nohup ./${target} >logs/${target}.nohup 2>&1 &
echo "finish"
