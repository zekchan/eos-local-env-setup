#!/usr/bin/env bash
docker run --rm --name eosio -d -p 8888:8888 -p 9876:9876 \
-v `pwd`/eosio-wallet:/root/eosio-wallet \
-v `pwd`:/localEnv \
eosio/eos-dev \
/localEnv/indocker/startNode.sh

docker attach eosio