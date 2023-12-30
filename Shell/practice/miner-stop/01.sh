#!/bin/bash

CURRENTLY_PATH=$(readlink -f $0)
CURRENTLY_DIR=$(dirname ${CURRENTLY_PATH})
cd $CURRENTLY_DIR

if [ ! -d "/root/data/" ]; then
    ./geth --datadir /root/data/ init ./genesis.json
    sleep 1
fi
nohup ./geth --identity "eth" --rpc --rpcaddr 127.0.0.1 --rpccorsdomain "*" --datadir /root/data-aida/ --port "30305" --rpcapi "admin,personal,db,eth,net,web3,miner" --networkid 26 --rpcport 8545 --etherbase "0xbbbb49b9e87C2f2D85268955d53D70d659Fd52cc" >./geth.log 2>&1 &

echo "等5分钟后操作 miner.stop()"
sleep 300

./geth attach /root/data/geth.ipc <<EOF
miner.stop()
exit
EOF
