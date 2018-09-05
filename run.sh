#!/usr/bin/env bash
myloc=$(dirname $0)
echo $myloc

docker run --rm --name eosio -d -p 8888:8888 -p 9876:9876 \
-v $myloc/eosio-wallet:/root/eosio-wallet \
-v $myloc:/localEnv \
eosio/eos-dev \
/localEnv/indocker/startNode.sh

docker attach eosio