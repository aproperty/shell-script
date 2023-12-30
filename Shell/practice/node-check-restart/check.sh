#/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

CURRENTLY_PATH=$(readlink -f $0)
CURRENTLY_DIR=$(dirname ${CURRENTLY_PATH})
server_DIR=$CURRENTLY_DIR

PORT=8546
ServicePID=$(netstat -atunp | grep LISTEN | grep $PORT | awk '{printf $7}' | cut -d/ -f1)

if [ -z $ServicePID ]; then
    echo "$(date -d today +'%Y-%m-%d %H:%M:%S') ::::: Check $ServicePID is no running. Run start.sh."
    cd $server_DIR
    if [ -f "./eth.log" ]; then
        cp ./eth.log ./eth.log$(date +%Y%m%d%H%M%S)
    fi
    nohup ./geth --identity "development" --ws --wsaddr 0.0.0.0 --wsorigins "*" --wsapi "admin,personal,db,eth,net,web3,miner" --datadir ./data-node-for-rpc/ --port "30305" --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcapi "admin,personal,db,eth,net,web3,miner" --rpcport 6545 --networkid 25 --wsport 6546 --etherbase "0xbbbb9802de39b40e499e9a17bd45ed32d95b0b01" > ./eth.log 2>&1 &
    sleep 4
    service_idt=$(netstat -anput | grep LISTEN | grep $PORT | awk '{printf $7}' | cut -d/ -f1)
    echo "$(date -d today +'%Y-%m-%d %H:%M:%S')"
    if [ -z $service_idt ]; then
        echo "::::: start $service_idt failed ,pless check debug.log!!!"
    else
        echo "::::: start $service_idt success!! "
    fi
else

    echo "$(date -d today +'%Y-%m-%d %H:%M:%S')"
    echo "::::: Check service_pid  $ServicePID is running"
    Num=5
    Line=$(tail -n 5 ${server_DIR}/eth.log | grep "too many open files" | wc -l)

    # for service in $services;do

    if [[ $Num = $Line ]]; then
        echo "::::: kill servier_pid $ServicePID"
        kill -9 $ServicePID
        sleep 3
        service_kPID=$(netstat -atunp | grep LISTEN | grep $PORT | awk '{printf $7}' | cut -d/ -f1)
        if [ -z $service_kPID ]; then
            echo "$(date -d today +'%Y-%m-%d %H:%M:%S') ::::: Recheck $service_kPID is no running"
            cd $server_DIR
            if [ -f "./eth.log" ]; then
                cp ./eth.log ./eth.log$(date +%Y%m%d%H%M%S)
            fi
            nohup ./geth --identity "development" --ws --wsaddr 0.0.0.0 --wsorigins "*" --wsapi "admin,personal,db,eth,net,web3,miner" --datadir ./data-node-for-rpc/ --port "30305" --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcapi "admin,personal,db,eth,net,web3,miner" --rpcport 6545 --networkid 25 --wsport 6546 --etherbase "0xbbbb9802de39b40e499e9a17bd45ed32d95b0b01" > ./eth.log 2>&1 &
            sleep 4
            service_tPID=$(netstat -atunp | grep LISTEN | grep $PORT | awk '{printf $7}' | cut -d/ -f1)
            echo "$(date -d today +'%Y-%m-%d %H:%M:%S')"
            if [ -z $service_tPID ]; then
                echo "::::: start $service_tPID failed ,pless check debug.log!!"
            else
                echo "::::: restart newid is $service_tPID success!! "
            fi
        else
            echo "$(date -d today +'%Y-%m-%d %H:%M:%S') :::::pid is $service_kPID. Kill failed!"
        fi

    fi

fi
